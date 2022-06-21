package com.demo.myhello;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Resource {

    @GetMapping(path = "/{name}")
    public String inventory(@PathVariable String name) {
        return "another hello " + name;
    }
}
