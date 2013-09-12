#ifndef _OBJECT_H_
#define _OBJECT_H_

#include "../linearalgebra.h"

namespace Logic
{
	class Object3D
	{

	public:
		Object3D(){}
		virtual void update(double _dt) = 0;

		int getModelID()				{ return modelID;	};
		Vec3 getPosition()	{ return position;	};
		Vec3 getRotation()	{ return rotation;	};
		Vec3 getScale()		{ return scale;		};

	protected:
		int modelID;
		Vec3 position; 
		Vec3 rotation; 
		Vec3 scale;    

	};
}

#endif