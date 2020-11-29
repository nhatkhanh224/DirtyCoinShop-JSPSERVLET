package laptrinhjavaweb.service.impl;

import java.util.List;

import javax.inject.Inject;

import laptrinhjavaweb.dao.ICategoryDAO;
import laptrinhjavaweb.dao.IProductDAO;
import laptrinhjavaweb.model.ProductModel;
import laptrinhjavaweb.service.IProductService;

public class ProductService implements IProductService {

	@Inject
	IProductDAO productDao;
	@Inject
	ICategoryDAO categoryDao;

	@Override
	public ProductModel save(ProductModel productModel) {

		return null;
	}

	@Override
	public List<ProductModel> findAll() {

		return productDao.findAll();
	}

	@Override
	public ProductModel update(ProductModel updateProduct) {

		return null;
	}

	@Override
	public void delete(long[] ids) {

	}

	@Override
	public List<ProductModel> findByCategory(Long categoryId) {

		return null;
	}

}
