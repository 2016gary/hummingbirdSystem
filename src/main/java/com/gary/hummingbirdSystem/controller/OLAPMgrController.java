package com.gary.hummingbirdSystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gary.hummingbirdSystem.util.BuildCube;
import com.gary.hummingbirdSystem.util.MakeCube;
import com.gary.hummingbirdSystem.util.MakeModel;

/**
 * OLAP管理
 * 
 * @author Gary
 * 
 * @date 2017年5月11日
 */
@Controller
@RequestMapping("/OLAPMgr")
public class OLAPMgrController {
	@RequestMapping("/MakeModulex")
	@ResponseBody
	public Boolean Makemodulex() {
		String cubeDescFile = "d:\\json\\JSONTEST.txt";
		MakeCube.createCube(cubeDescFile);
		return true;
	}

	@RequestMapping("/buildCube")
	@ResponseBody
	public Boolean buildCube() {
		String path = "http://192.168.0.68:7070/kylin/api/cubes/cube_LY_test/rebuild";
		System.out
				.println(BuildCube
						.Put(path,
								"{\"startTime\": 1419436800000,\"endTime\": 1420041600000,\"buildType\": \"BUILD\"}"));
		// 没有终止时间
		return true;
	}

	@RequestMapping("/makeModel")
	@ResponseBody
	public Boolean makeModel() {
		String cubeDescFile = "d:\\json\\modeltest.txt";
		MakeModel.createModel(cubeDescFile);
		return true;
	}

}
