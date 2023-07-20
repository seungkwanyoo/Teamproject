package org.zerock.productdeailsController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/productdetails")
public class productdeailsController {

	@GetMapping("/productDetails")
	public String productDetails() {
		return null;
	}
}
