package com.swlc.gadgetmart.backend.singerAPI.dto;

import java.util.List;

public class ProductList{
    List<com.swlc.gadgetmart.backend.singerAPI.dto.ProductDto> products;

    public List<com.swlc.gadgetmart.backend.singerAPI.dto.ProductDto> getItems() {

        return products;
    }

    public void setProducts(List<com.swlc.gadgetmart.backend.singerAPI.dto.ProductDto> products) {

        this.products = products;
    }

    @Override
    public String toString() {
        return "Products{" +
                "product=" + products +
                '}';
    }
}
