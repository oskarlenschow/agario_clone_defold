varying highp vec3 var_position;

const vec3 center = vec3(0.0);


void main()
{
    float len = distance(center, var_position);
    //float len = 0.0;
    
    if(len > 0.1){
        //gl_FragColor = vec4((var_position.xy + 1.0) * 0.5, 0.0, 1.0);
        discard;
    }else if(len > 0.092){
        gl_FragColor = vec4(0.7, 0.6, 0.3, 1.0);
    }else{
        gl_FragColor = vec4(0.9, 0.8, 0.5, 1.0);
    }

    //gl_FragColor = vec4((var_position.xy + 1.0) * 0.5, 0.0, 1.0);
}

