package com.swlc.gadgetmart.backend.singerAPI.controllers;


import com.swlc.gadgetmart.backend.singerAPI.dto.ProductList;
import com.swlc.gadgetmart.backend.singerAPI.repository.ProductRepo;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@CrossOrigin
public class ProductController {

    private final ProductRepo productRepo;

    public ProductController(ProductRepo productRepo) {
        this.productRepo = productRepo;
    }

    @GetMapping(value = "/product", produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity getAllItems() {
        try {
            ProductList items = new ProductList();
            items.setProducts(productRepo.getAllProducts());
            return new ResponseEntity<>(items, HttpStatus.OK);

        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>(e.getMessage(), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
