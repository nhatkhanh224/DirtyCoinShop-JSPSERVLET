package laptrinhjavaweb.service;

import java.util.List;

import laptrinhjavaweb.model.ProductModel;

public interface IProductService {
	ProductModel save(ProductModel productModel);

	List<ProductModel> findAll();

	ProductModel update(ProductModel updateProduct);

	void delete(long[] ids);

	List<ProductModel> findByCategory(Long categoryId);
}
