/**
 * 
 */
package org.cytoscape.hyper;

import org.cytoscape.app.CyAppAdapter;
import org.cytoscape.work.AbstractTask;
import org.cytoscape.work.TaskMonitor;

/**
 * @author pablovm1990
 *
 */
public class HyperTask extends AbstractTask {

	private CyAppAdapter adapter;
	
	/**
	 * 
	 */
	public HyperTask() {
		// TODO Auto-generated constructor stub
	}

	public HyperTask(CyAppAdapter cy) {
		// TODO Auto-generated constructor stub
		this.adapter = cy;
	}

	/* (non-Javadoc)
	 * @see org.cytoscape.work.AbstractTask#run(org.cytoscape.work.TaskMonitor)
	 */
	@Override
	public void run(TaskMonitor arg0) throws Exception {
		// TODO Auto-generated method stub

	}

}
