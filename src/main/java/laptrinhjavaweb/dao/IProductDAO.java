package laptrinhjavaweb.dao;

import java.util.List;

import laptrinhjavaweb.model.ProductModel;

public interface IProductDAO {
	List<ProductModel> findAll();

	ProductModel findOne(Long id);

	List<ProductModel> findByCategoryId(Long categoryId);

	Long save(ProductModel productModel);

	void update(ProductModel updateProduct);

	void delete(long id);

}
