package customer.java_cap_sample.index;

import java.io.PrintWriter;

import com.sap.cds.adapter.IndexContentProvider;
import com.sap.cds.adapter.IndexContentProviderFactory;

/**
 * Explicitly adds links to UI resources provided by this application to the
 * index page
 */
public class UiIndexContentProviderFactory implements IndexContentProviderFactory {

	@Override
	public IndexContentProvider create() {
		return new UiIndexContentProvider();
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

	private static class UiIndexContentProvider implements IndexContentProvider {
		@Override
		public String getSectionTitle() {
			return "UI endpoints";
		}

		@Override
		public void writeContent(PrintWriter writer, String contextPath) {
			writer.print("<ul>");
			writer.printf("<li><a href=\"%s\">%s</a></li>", contextPath + "/project1/webapp/index.html", "Bookshop");
			writer.print("</ul>");
		}

	}

}
