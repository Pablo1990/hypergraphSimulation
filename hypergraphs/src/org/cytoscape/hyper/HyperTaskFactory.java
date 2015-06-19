/**
 * 
 */
package org.cytoscape.hyper;

import org.cytoscape.app.CyAppAdapter;
import org.cytoscape.work.AbstractTaskFactory;
import org.cytoscape.work.TaskIterator;

/**
 * @author pablovm1990
 *
 */
public class HyperTaskFactory extends AbstractTaskFactory {

	private CyAppAdapter cy;
	@Override
	public TaskIterator createTaskIterator() {
		// TODO Auto-generated method stub
		return new TaskIterator(new HyperTask(cy));
	}
	
	public HyperTaskFactory(CyAppAdapter a){
		this.cy = cy;
	}

}
