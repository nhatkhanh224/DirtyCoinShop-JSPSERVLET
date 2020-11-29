package laptrinhjavaweb.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import laptrinhjavaweb.contant.SystemConstant;
import laptrinhjavaweb.model.ProductModel;
import laptrinhjavaweb.service.ICategoryService;
import laptrinhjavaweb.service.IProductService;
import laptrinhjavaweb.utils.FormUtil;

@WebServlet(urlPatterns = { "/admin-product" })
public class ProductController extends HttpServlet {

	@Inject
	private ICategoryService categoryService;
	@Inject
	private IProductService productService;

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ProductModel model = FormUtil.toModel(ProductModel.class, request);
		String view = "";
		if (model.getType().equals(SystemConstant.LIST)) {
			model.setListResult(productService.findAll());
			request.setAttribute(SystemConstant.MODEL, model);
			view = "/views/admin/product/list.jsp";
		} else if (model.getType().equals(SystemConstant.EDIT)) {
			view = "/views/admin/product/edit.jsp";
		}
		request.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}

}
