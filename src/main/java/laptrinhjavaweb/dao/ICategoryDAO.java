package laptrinhjavaweb.dao;

import java.util.List;

import laptrinhjavaweb.model.CategoryModel;

public interface ICategoryDAO {
	List<CategoryModel> findAll();
}
