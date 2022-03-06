package com.swlc.gadgetmart.backend.singerAPI.repository;


import com.swlc.gadgetmart.backend.singerAPI.dto.ProductDto;
import java.util.List;


public interface ProductRepo {
    List<ProductDto> getAllProducts() throws Exception;
}
