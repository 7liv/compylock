//     pppp penis


GameInfo
{
    game        "citadel"
    title       "Citadel"
    type        "multiplayer_only"
    nomodels    "1"
    nohimodel   "1"
    nocrosshair "0"
    hidden_maps
    {
        test_speakers "1"
        test_hardware "1"
    }
    nodegraph   "0"
    perfwizard  "0"
    tonemapping "0"
    GameData    "citadel.fgd"

    PGIVersion "39A735A413003C88A806B364C32DFC6D077E551B9E4EC6C7B11D41E8E67BFA0C"

    Localize
    {
        DuplicateTokensAssert "1"
    }

    SupportedLanguages
    {
        brazilian  "3"
        czech      "3"
        english    "3"
        french     "3"
        german     "3"
        italian    "3"
        indonesian "3"
        japanese   "3"
        koreana    "3"
        latam      "3"
        polish     "3"
        russian    "3"
        schinese   "3"
        spanish    "3"
        thai       "3"
        turkish    "3"
        ukrainian  "3"
    }

    FileSystem
    {
        SearchPaths
        {
            Game_Language "citadel_*LANGUAGE*"
            Game          "citadel/addons"

            Mod   "citadel"
            Write "citadel"
            Game  "citadel"
            Mod   "core"
            Write "core"
            Game  "core"
        }

        UserSettingsPathID       "USRLOCAL"
        LegacyUserSettingsPathID "MOD"
    }

    MaterialSystem2
    {
        RenderModes
        {
            game "Default"
            game "Forward"
            game "Deferred"
            game "Outline"
            game "Depth"
            game "FrontDepth"
            game "ShadowSilhouette"

            dev "ToolsVis"       // Visualization modes for all shaders (lighting only, normal maps only, etc.)
            dev "ToolsWireframe" // This should use the ToolsVis mode above instead of being its own mode\

            tools "ToolsUtil" // Meant to be used to render tools sceneobjects that are mod-independent, like the origin grid
        }
    }

    MaterialEditor
    {
        DefaultShader "environment_texture_set"
    }

    NetworkSystem
    {
        BetaUniverse
        {
            FakeLag  "40"
            FakeLoss ".1"
            FakeReorderPct   "0"
            FakeReorderDelay "0"
            FakeJitter       "off"
        }

        SkipRedundantChangeCallbacks "1"
    }

    RenderSystem
    {
        GraphicsPipelineLibrary            "1"    
        IndexBufferPoolSizeMB              "128"  
        LowLatency                         "1"    
        MinStreamingPoolSizeMB             "2048" 
        MinStreamingPoolSizeMBTools        "2048" 
        SwapChainSampleableDepth           "1"    
        Use32BitDepthBuffer                "0"    
        Use32BitDepthBufferWithoutStencil  "0"    
        UseReverseDepth                    "1"    
        VulkanAdditionalShaderCache        "vulkan_shader_cache.foz"
        VulkanDefrag                       "1"   
        VulkanMutableSwapchain             "1"   
        VulkanOnlyTestProbability          "0"   
        VulkanOnly_Linux                   "1"   
        VulkanRequireDescriptorIndexing    "1"  
        VulkanRequireSubgroupWaveOpSupport "1"   
        VulkanStagingPMBSizeLimitMB        "768" 
        VulkanSteamAppShaderCache          "1"   
        VulkanSteamDownloadedShaderCache   "1"   
        VulkanSteamShaderCache             "1"   



        MaxPreloadTextureResolution           "0" // this stems from the dll so you can assume that there is no default value.
        AllowPartialMipChainImmediateTexLoads "1"


    }

    NVNGX
    {
        AppID        "103371621"
        SupportsDLSS "1"
    }

    Engine2
    {
        HasModAppSystems "1"
        Capable64Bit     "1"
        URLName          "citadel"
        RenderingPipeline
        {
            SupportsMSAA  "0"
            DistanceField "1"
        }
        PauseSinglePlayerOnGameOverlay "1"
        PauseOnCtrlConsole             "0" // Src2 issues a 'setpause' on holding down CTRL + toggleconsole key, disable this for Deadlock.
        DefensiveConCommands           "1"
        DisableLoadingPlaque           "1"
        LocalServerClientAccess        "1"

        MapMaxCoord "32768"
    }

    ContentBuilder
    {
        ResourceCompilerDirectXUsesWARP "0"
    }

    SoundSystem
    {
        SteamAudioEnabled   "1"
        WaveDataCacheSizeMB "256"
        UsePlatTime         "1"
    }
    Sounds
    {
        HierarchicalEncodingFiles "1"
    }

    ToolsEnvironment
    {
        Engine   "Source 2"
        ToolsDir "../sdktools" // NOTE: Default Tools path. This is relative to the mod path.
    }

    pulse
    {
        pulse_enabled "1"
    }

    Hammer
    {
        fgd                           "citadel.fgd" // NOTE: This is relative to the 'game' path.
        GameFeatureSet                "Citadel"
        DefaultSolidEntity            "trigger_multiple"
        DefaultPointEntity            "info_player_start"
        NavMarkupEntity               "func_nav_markup"
        OverlayBoxSize                "8"
        TileMeshesEnabled             "1"
        RenderMode                    "ToolsVis"
        CreateRenderClusters          "1"
        DefaultMinDrawVolumeSize      "2048"
        DefaultMinTrianglesPerCluster "16384"
        TileGridSupportsBlendHeight   "1"
        TileGridBlendDefaultColor     "0 255 0"
        LoadScriptEntities            "0"
        UsesBakedLighting             "1"
        UseAnalyticGrid               "0"
        SupportsDisplacementMapping   "0"
        SteamAudioEnabled             "1"
        LatticeDeformerEnabled        "1"
        ShadowAtlasWidth              "16384"
        ShadowAtlasHeight             "16384"
        TimeSlicedShadowMapRendering  "1"
    }

    SoundTool
    {
        DefaultSoundEventType "src1_3d"

        SoundEventBaseOptions
        {
            Base.Announcer.VO.2d     ""
            Base.World.VO.Emitter.3d ""
            Base.Hero.VO.Ping.2d     ""
            Base.Hero.VO.2d          ""
            Base.Hero.VO.3d          ""
            Base.Hero.VO.Ability.3d  ""
            Base.Hero.VO.Ultimate.3d ""
            Base.Hero.VO.Dash.3d     ""
            Base.Hero.VO.Effort.3d   ""
            Base.Hero.VO.Pain.3d     ""
            Base.Hero.VO.Melee.3d    ""
            Base.Hero.VO.Death.3d    ""
        }
    }

    RenderPipelineAliases
    {
    }

    ResourceCompiler
    {
        // Overrides of the default builders as specified in code, this controls which map builder steps
        // will be run when resource compiler is run for a map without specifiying any specific map builder
        // steps. Additionally this controls which builders are displayed in the hammer build dialog.
        DefaultMapBuilders
        {
            bakedlighting "1" // Enable lightmapping during compile time
            envmap        "0" // turned off since it currently causes an assert and doesn't work due to some build issue
            nav           "1" // Generate nav mesh data
            sareverb      "0" // Bake Steam Audio reverb
            sapaths       "0" // Bake Steam Audio pathing
            sacustomdata  "1" // Bake Steam Audio custom data
        }

        // Game specific steps run after the map has been built, in the order they are listed here
        GameSpecificPostMapBuildSteps
        {
            pve_nav_cache "1" // Bake the spots the PVE directors spawn things on
        }

        MeshCompiler
        {
            OptimizeForMeshlets       "1"
            TrianglesPerMeshlet       "64" // Maximum valid value currently is 126
            UseMikkTSpace             "1"
            EncodeVertexBuffer        "1"
            EncodeVertexBufferVersion "1"
            EncodeVertexBufferLevel   "3"
            EncodeIndexBuffer         "1"
            SplitDepthStream          "1"
        }

        WorldRendererBuilder
        {
            VisibilityGuidedMeshClustering     "1"
            MinimumTrianglesPerClusteredMesh   "8192"
            MinimumVerticesPerClusteredMesh    "8192"
            MinimumVolumePerClusteredMesh      "8192" // ~20x20x20 cube
            MaxPrecomputedVisClusterMembership "96"
            MaxCullingBoundsGroups             "128"
            UseAggregateInstances              "1"
            AggregateInstancingMeshlets        "1"
            BakePropsWithExtraVertexStreams    "1"
            MergeTranslucents                  "1"
        }

        BakedLighting
        {
            Version                          "4"
            ImportanceVolumeTransitionRegion "512" // distance we transition from high to low resolution charts
            LightmapChannels
            {
                direct_light_shadows          "1"
                debug_chart_color             "1"
                directional_irradiance_sh2_dc "1"

                directional_irradiance_sh2_r
                {
                    CompressedFormat "DXT1"
                }

                directional_irradiance_sh2_g
                {
                    CompressedFormat "DXT1"
                }

                directional_irradiance_sh2_b
                {
                    CompressedFormat "DXT1"
                }
            }
            LightmapGutterSize   "2" // For bicubic filtering
            UseStaticLightProbes "0"
            LPVAtlas             "1"
        }

        SteamAudio
        {
            ReverbDefaults
            {
                GridGenerationType          "0" // 0: Automatic, Everywhere, 1: Automatic, Use Probe Generation Volume, 2: Manual
                FilterUsingVolumes          "1" // Filter Using Probe Exclusion Volumes ( boolean )
                FilterUsingNavMesh          "0" // Filter Using NavMesh
                GridSpacing                 "3.0"
                HeightAboveFloor            "1.5"
                RebakeOption                "0" // 0: cleanup, 1: manual, 2: auto
                NumRays                     "32768"
                NumBounces                  "64"
                IRDuration                  "1.0"
                AmbisonicsOrder             "1"
                ClusteringEnabled           "0"
                ClusteringCubemapResolution "16.0"
                ClusteringDepthThreshold    "10.0"
            }
            PathingDefaults
            {
                GridGenerationType "0" // 0: Automatic, Everywhere, 1: Automatic, Use Probe Generation Volume, 2: Manual
                FilterUsingVolumes "1" // Filter Using Probe Exclusion Volumes ( boolean )
                FilterUsingNavMesh "0" // Filter Using NavMesh
                GridSpacing        "3.0"
                HeightAboveFloor   "1.5"
                RebakeOption       "0" // 0: cleanup, 1: manual, 2: auto
                NumVisSamples      "1"
                ProbeVisRadius     "0"
                ProbeVisThreshold  "0.1"
                ProbeVisPathRange  "1000.0"
            }
            CustomDataDefaults
            {
                GridGenerationType         "0" // 0: Automatic, Everywhere, 1: Automatic, Use Probe Generation Volume, 2: Manual
                FilterUsingVolumes         "1" // Filter Using Probe Exclusion Volumes ( boolean )
                FilterUsingNavMesh         "1" // Filter Using NavMesh
                GridSpacing                "6"
                HeightAboveFloor           "1.5"
                RebakeOption               "0" // 0: cleanup, 1: manual, 2: auto
                BakeOcclusion              "0" // 0: Disabled, 1: Enabled
                BakeDimensions             "1" // 0: Disabled, 1: Enabled
                BakeMaterials              "0" // 0: Disabled, 1: Enabled
                OcclusionPathing           "1"
                OcclusionReflection        "0"
                OcclusionReflectionRays    "16384"
                OcclusionReflectionBounces "16"
                DimensionsOutsideThreshold "0.02"

            }
            ProbeGenerationVolumeDefaults
            {
                Spacing            "3.0"
                Height             "1.5"
                HeightSpacing      "12"
                UseForReverb       "0"
                UseForPathing      "0"
                UseForCustomData   "1"
                FilterUsingVolumes "1"
                FilterUsingNavMesh "1"
            }
        }
        SoundEventScripts
        {
            OmitMetadataAndLineText "1"
        }
        SoundStackScripts
        {
            CompileStacksStrict "1"
        }
        VisBuilder
        {
            MaxVisClusters                     "4096"
            PreMergeOpenSpaceDistanceThreshold "128.0"
            PreMergeOpenSpaceMaxDimension      "2048.0"
            PreMergeOpenSpaceMaxRatio          "8.0"
            PreMergeSmallRegionsSizeThreshold  "20.0"
        }

        VDataLocalization
        {
            GameOutputPath "resource/localization/citadel_vdata"
            TokenPrefix    "Citadel_VData_"
        }

        TextureCompiler
        {
            // CompressMinRatio        "95"
            // CompressMipsOnDisk      "1"
            // Compressor              "lz4"
            // PublicToolsDefaultMaxRes "2048"
            AllowNP2Textures           "1"
            AllowPanoramaMipGeneration "1"
        }
    }

    Source1Import
    {
        forcevtxfileupconvert "1"
    }

    WorldRenderer
    {

        BindlessSceneObjectDesc      "CitadelBindlessDesc"
        EnvironmentMapCacheSizeTools "2"              
        EnvironmentMapColorSpace     "linear"         
        EnvironmentMapFaceSize       "256"            
        EnvironmentMapFormat         "BC6H"           
        EnvironmentMapMipProcessor   "GGXCubeMapBlur" 
        EnvironmentMapPreviewFormat  "BC6H"           
        EnvironmentMapRenderSize     "1024"           
        EnvironmentMapUseCubeArray   "1"              
        EnvironmentMaps              "1"              
        GrassCastsShadows            "0"              



        AggregateInstanceStream    "1"    
        AggregateRTProxyDesc       "1"    
        AggregateSceneObjectDesc   "1"    
        AggregateVertexColorStream "1"    
        EnvironmentMapCacheSize    "1024" 
        LPVEdgeBlending            "0"    

    }

    SceneSystem
    {
        CSMCascadeResolution                        "0"          
        CubemapFog                                  "0"          
        DefaultShadowTextureHeight                  "0"          
        DefaultShadowTextureWidth                   "0"          
        DisableLateAllocatedTransformBuffer         "1"          
        DynamicShadowResolution                     "1"          
        FogCachedShadowAtlasHeight                  "0"          
        FogCachedShadowAtlasWidth                   "0"          
        FogCachedShadowTileSize                     "0"          
        FrameBufferCopyFormat                       "R11G11B10F" 
        GpuLightBinner                              "1"          
        GpuLightBinnerSunLightFastPath              "1"          
        HDRFrameBuffer                              "0"          
        LayerBatchThresholdFullsort                 "200"        
        MinimumLateAllocatedVertexCacheBufferSizeMB "64"         
        NonTexturedGradientFog                      "0"          
        SunLightManagerCount                        "0"          
        SunLightManagerCountTools                   "0"         
        SunLightMaxCascadeSize                      "2"          
        SunLightShadowRenderMode                    "Depth"      
        Tonemapping                                 "0"         
        TransformTextureRowCount                    "1024"       
        TransformTextureRowCountToolsMode           "6144"       
        VolumetricFog                               "0"          




        WellKnownLightCookies
        {
            blank      "materials/effects/lightcookies/blank.vtex"
            flashlight "materials/effects/lightcookies/flashlight.vtex"
        }

        ComputeShaderSkinning "1"
    }

    NavSystem
    {
        NavTileSize   "128.0"
        NavCellSize   "1.5"
        NavCellHeight "2.0"

        // Hull definitions live in scripts/nav_hulls.vdata
        // Preset definitions live in scripts/nav_hulls_presets.vdata
        NavHullsPreset "default"

        NavRegionMinSize              "8"
        NavRegionMergeSize            "20"
        NavEdgeMaxLen                 "1200"
        NavEdgeMaxError               "51.0"
        NavVertsPerPoly               "4"
        NavDetailSampleDistance       "120.0"
        NavDetailSampleMaxError       "2.0"
        NavSmallAreaOnEdgeRemovalSize "81.0"
    }

    AnimationSystem
    {
        DisableServerInterpCompensation "1"
        DisableAnimationScript          "1"
        ServerPoseRecipeHistorySize     "60"
        ClientPoseRecipeHistorySize     "60"

    }

    ModelDoc
    {
        models_gamedata "models_gamedata.fgd"
        features        "modelconfig;gamepreview;wireframe_backfaces;distancefield"
    }


    Particles
    {
        BindlessParticleShader               "1"
        EnableParticleShaderFeatureBranching "1"
        Features                             "non_homogenous_forward_layer_only"
        Float16HDRBackBuffer                 "1"
        PET_SupportFadingOpaqueModels        "1"

        EnableMixedResolution         "1" 
        MPropertyFlattenIntoParentRow "1"
        ParticleTraceOffsetOnlyHit    "1"
        ParticlesFoggedByDefault      "0"
        PerVertexLighting             "0"
        PostSimulate                  "0"
    }

    Physics
    {
        EnableWorldCompounds "1"
    }

    ConVars
    {
        r_aspectratio "2.4" 
	
	mm_idle_enabled "false"
	mm_prefer_solo_only                   "true"   
        citadel_camera_use_vmdl_flatten_vertical "true"
        citadel_portrait_world_renderer_off      "false" 
        citadel_trooper_glow_disabled            "0"     
        cl_phys_enabled                          "true"  
        lb_enable_dynamic_lights                 "true" 
        r_citadel_enable_pano_world_blur         "true"  
        r_particle_explicit_fetch                "false" 
        r_particle_max_size_cull                 "600"   
        r_size_cull_threshold                    "0.9"   
        sc_screen_size_lod_scale_override        "0.55"  
        steam_inputhandler_enabled               "false" 
   	r_farz       "-1" 
        r_mapextents "16384" 
	citadel_custom_ui_colors "0"
	citadel_use_spectator_team_colors "0"
	panorama_alignment_fixes "true"
	panorama_content_size_fixes "true"
	panorama_enable_secondary_layout_pass "true"
        citadel_damage_report_enable                    "1"    
        citadel_damage_text_batching_window_ability     "1000" 
        citadel_distance_mouse_move_for_minimap_drawing "15"   
        citadel_hideout_ball_show_juggle_count          "1"    
        citadel_hideout_ball_show_juggle_fx             "1"    
        citadel_hud_objective_health_debug_show_midboss "false"
        citadel_hud_objective_health_enabled            "2"    
        citadel_unit_status_old_update_rate             "30"   
        citadel_unit_status_single_bar_mode             "false"
        v8_maximum_heap_size_mb                         "1024" 
        panorama_comp_layer_lru_lifetime                "1"    
        lb_enable_baked_shadows     "false"
        lb_enable_stationary_lights "false"
        engine_low_latency_sleep_after_client_tick "false"
        citadel_melee_shake_duration 0
        citadel_camera_soft_collision_angle         "75"   
        citadel_camera_use_vmdl_flatten_horizontal  "false"
        citadel_camera_wobble_disable               "true" 
        citadel_melee_shake_amplitude               "0"    
        engine_accurate_input_processing_delta_time "true" 
        r_citadel_clip_sphere_min_opacity           "0"    
        cam_idealdelta                          "0"
        cam_ideallag                            "0"
        citadel_camera_height                   "0"
        citadel_camera_height_ceiling_distance  "0"
        citadel_camera_listening_offset         "-1"
        citadel_camera_pitch_default            "0"
        citadel_camera_see_distance_max         "7000"
        citadel_shoot_forward_offset            "0"
        citadel_stuck_camera_trace_extra_length "0"
        citadel_tightcamera_alternative         "1"
        nav_edit_use_camera                     "0"
        rpg_camera_yaw                          "0"
        r_texture_budget_threshold     "0.7" 
        r_texture_budget_update_period "0.5" 
        r_texture_stream_mip_bias      "3"   
        r_texturefilteringquality      "5"   
        thread_pool_option "2"
        lb_barnlight_shadowmap_scale             "0"    
        lb_csm_cascade_size_override             "1"    
        lb_csm_draw_alpha_tested                 "0"    
        lb_csm_draw_translucent                  "0"    
        lb_csm_override_staticgeo_cascades       "true" 
        lb_csm_override_staticgeo_cascades_value "true" 
        lb_dynamic_shadow_resolution_base        "16"   
        lb_enable_shadow_casting                 "0"    
        lb_ssss_samples                          "0"    
        lb_sun_csm_size_cull_threshold_texels    "60"   
        r_citadel_shadow_caching                 "true" 
        r_citadel_shadow_quality                 "0"    
        r_size_cull_threshold_shadow             "2.4"  
        sparseshadowtree_disable_for_viewmodel   "1"    
        sparseshadowtree_enable_rendering        "0"    
        cl_retire_low_priority_lights               "1"    
        mat_async_shader_load                       "1"    
        mat_max_lighting_complexity                 "0"    
        r_citadel_ssao_quality                      "0"    
        r_citadel_ssao_thin_occluder_compensation   "0"    
        r_citadel_sun_shadow_slope_scale_depth_bias "0"    
        r_distancefield_enable                      "1"    
        r_lightmap_bicubic_filtering                "1"    
        r_lightmap_size                             "2048" 
        r_lightmap_size_directional_irradiance      "0"    
        r_multiscattering                           "1"    
        r_rendersun                                 "0"    
        r_ssao                                      "0"    
        r_ssao_strength                             "0"    
        cl_disable_ragdolls "0" 
        cl_ragdoll_limit    "0" 
        cl_fasttempentcollision         "1000" 
        cloth_sim_on_tick               "0"    
        enable_boneflex                 "0"    
        ik_fabrik_align_chain           "1"    
        ik_final_fixup_enable           "0"    
        props_break_max_pieces_perframe "1"    
        cl_show_splashes                     "0"     
        mat_colorcorrection                  "1"     
        r_character_decal_resolution         "4"     
        r_depth_of_field                     "0"     
        r_effects_bloom                      "0"     
        r_post_bloom                         "0"     
        sc_clutter_enable                    "false" 
        violence_ablood                      "0"     
        violence_agibs                       "0"     
        violence_hblood                      "0"     
        violence_hgibs                       "0"     
        volume_fog_intermediate_textures_hdr "false" 
        cl_particle_sim_fallback_base_multiplier "100" 
        cl_particle_sim_fallback_threshold_ms    "1"   
        cl_particle_fallback_multiplier          "10"  
        cl_particle_fallback_base                "5"   
        cl_aggregate_particles                   "true"    
        cl_particle_batch_mode                   "1"       
        r_citadel_screenspace_particles_full_res "true"    
        r_draw_particle_children_with_parents    "1"       
        r_limit_particle_job_duration            "true"    
        r_particle_allowprerender                "true"    
        r_particle_batch_collections             "true"    
        r_particle_fixedrandomseeds              "true"    
        r_particle_max_texture_layers            "4"       
        r_particle_min_timestep                  "0.00241" 
        r_particle_model_per_thread_count        "64"      
        r_particle_skip_postsim                  "true"    
        r_physics_particle_op_spawn_scale        "0"       
        r_update_particles_on_render_only_frames "true"    
        r_world_wind_strength                    "0"       
        phys_cull_internal_mesh_contacts        "true"  
        sc_aggregate_bvh_threshold              "256"    
        sc_allow_dithered_lod                   "false" 
        sc_fade_distance_scale_override         "100"   
        sc_instanced_mesh_motion_vectors        "0"     
        sc_instanced_mesh_size_cull_bias_shadow "10"    
        sc_layer_batch_threshold                "256"   
        sc_layer_batch_threshold_fullsort       "120"   
        citadel_video_preset          "9"     
        r_citadel_gpu_culling         "true"  
        r_vma_defrag_algorithm        "0"     
        rtx_dynamic_blas              "false" 
        rtx_dynamic_blas_caching      "true"  
        rtx_force_default_hitgroup    "true"  
        rtx_texture_resolution        "64"    
        sc_allow_dithered_lod         "false" 
        sc_instanced_mesh_opaque_fade "false" 
        snd_steamaudio_max_occlusion_samples "32"  
        snd_steamaudio_num_diffuse_samples   "512" 
        cc_captiontrace                                   "0"
        citadel_bullet_shot_offset_fade_time              "0"
        citadel_show_survey                               "true"
        citadel_test_ranked_summary                       "true"
        cl_batch_entity_list_ops_during_latch             "true"  
        cl_enable_eye_occlusion                           "false" 
        cl_interp_parallel                                "true"  
        cl_modifier_parallel_gather_status_effect_updates "false" 
        cl_phys_assume_fixed_tick_interval                "true"  
        csm_viewmodel_farz                                "1"     
        csm_viewmodel_max_shadow_dist                     "1"     
        csm_viewmodel_max_visible_dist                    "1"     
        csm_viewmodel_nearz                               "512"   
        debug_draw_enable                                 "false" 
        default_fov                                       "0"     
        engine_max_ticks_to_simulate                      "2"     
        r_async_compute_fog                               "true"  
        r_citadel_depth_prepass_dynamic_objects           "false" 
        r_citadel_glow_health_bar_debug                   "false"  
        r_citadel_gpu_preview_denoise_passes              "0"     
        r_drawropes                                       "false" 
        r_drawtracers_firstperson                         "false" 
        r_drawviewmodel                                   "false" 
        r_enable_rigid_animation                          "false" 
        r_hair_ao                                         "0"     
        r_max_portal_render_targets                       "2"     
        r_particle_model_new                              "false"
        r_particle_model_new8                             "false"
        r_particle_newinput                               "true"  
        r_pixelvisibility_partial                         "false" 
        r_render_hair                                     "false" 
        r_renderdoc_auto_shader_pdbs                      "false" 
        r_skip_precache_validation_check                  "true"  
        r_strip_invisible_during_sceneobject_update       "1"     
        sparseshadowtree_leaf_precision_viewmodel         "0"     
        viewmodel_fov                                     "0"     
        r_grass_end_fade   "0"
        r_grass_quality    "0" 
        r_grass_start_fade "0" 
        cl_simulate_dormant_entities "false" 
        audio_enable_vmix_mastering              "false" 
        snd_mixahead                             "0.05"  
        snd_occlusion_bounces                    "0"     
        snd_occlusion_rays                       "0"     
        snd_soundmixer_version                   "2"     
        snd_steamaudio_reverb_order_rendering    "0"     
        snd_ui_positional                        "false" 
        snd_steamaudio_num_threads               "6"     
        audio_enable_spawn_mask_mix_layer        "false" 
        snd_boxverb_simd                         "false" 
        snd_enable_subgraph_corenull_passthrough "false" 


        rate
        {
            min     "98304"
            default "786432"
            max     "1000000"
        }

        // Networking - General
        sv_minrate                   "98304"
        sv_maxunlag                  "0.500"
        sv_maxunlag_player           "0.200"
        sv_lagcomp_filterbyviewangle "false"
        cl_usesocketsforloopback     "1"
        cl_poll_network_early        "0"
        cq_buffer_bloat_msecs_max    "120" // 7.68 ticks @64hz max cq bloat

        // Networking - Induced latency (pred offset)
        cl_tickpacket_recvmargin_desired              "5" // 5 ms base, min. floor for protecting against thrashing the queue
        cl_tickpacket_desired_queuelength             "1"
        cl_async_usercmd_send_disabled_recvmargin_min "0.5" // Additional frame since we do not use the async usercmd send (potentially unneccessary)
        cl_clock_buffer_ticks                         "1"   // Buffer added to the simulation clock margin ( affects pred offset and cadence of client world ticks )
        cl_interp_ratio                               "0"
        cl_async_usercmd_send                         "false" // We don't support early prediction at the moment, which async send requires

        // Nav gen
        nav_gen_connect_dist_a "2.0"

        // Spew warning when adding/removing classes to/from the top of the hierarchy
        panorama_classes_perf_warning_threshold_ms "0.75"

        // Panorama - enable minidumps on JS exceptions
        panorama_js_minidumps "1"
        // Enable the render target cache optimization.
        panorama_disable_render_target_cache "0"

        // Enable the composition layer optimization
        panorama_skip_composition_layer_content_paint "1"

        // Steam audio loading data
        snd_steamaudio_load_reverb_data     "0"
        snd_steamaudio_load_pathing_data    "0"
        snd_steamaudio_load_occlusion_data  "0"
        snd_steamaudio_load_dimensions_data "1"
        snd_steamaudio_load_materials_data  "0"

        // Steam Audio project specific convars
        snd_steamaudio_enable_custom_hrtf                                "0"
        snd_steamaudio_active_hrtf                                       "0"
        snd_steamaudio_pathing_order                                     "3"
        snd_steamaudio_pathing_order_rendering                           "3"
        snd_steamaudio_enable_pathing                                    "0"
        snd_steamaudio_enable_reverb                                     "0"
        snd_steamaudio_reverb_level_db                                   "-6"
        snd_steamaudio_enable_pathing                                    "0"
        snd_steamaudio_invalid_path_length                               "0.0"
        snd_steamaudio_max_probes_customdata_dimensions                  "100000"
        snd_steamaudio_dimensions_grid_height_max                        "100"
        snd_steamaudio_baked_dimensions_probelookup_usealternate         "1"
        snd_steamaudio_custombake_dimensions_size_and_inout_bake_enabled "1"
        snd_steamaudio_custombake_dimensions_outsidefield_bake_enabled   "0"
        snd_steamaudio_custombake_dimensions_smallsizefield_bake_enabled "0"
        snd_steamaudio_dimensions_max_ray_length                         "2500"
        cl_disconnect_soundevent                                         "citadel.convar.stop_all_game_layer_soundevents"
        snd_event_browser_default_stack                                  "citadel_default_3d"

        // voip
        voice_in_process "1"

        // Sound debugging
        snd_report_audio_nan "1"

        // Audio system settings
        snd_sos_max_event_base_depth "10"
        sos_use_guid_filter          "1"

        voice_always_sample_mic
        {
            version "2"
            default "0"
        }

        reset_voice_on_input_stallout "0"
        voice_input_stallout          "0.5"

        audio_enclosure_calc_enabled "0"

        sc_layer_batch_threshold_fullsort "20"

        // Perf/Parallelism
        iv_parallel_restore "1"

        // For perf reasons, since we don't use source-based DSP:
        disable_source_soundscape_trace "1"


        fps_max    "400"
        fps_max_ui "120"

        in_button_double_press_window "0.3"

        // Convars that control spatialization of UI audio.
        snd_ui_positional            "1"
        snd_ui_spatialization_spread "2.4"

        // sound volume rate change limiting
        snd_envelope_rate                        "100.0"
        snd_soundmixer_update_maximum_frame_rate "0"

        //don't let people mess with speaker config settings.
        speaker_config
        {
            min     "0"
            default "0"
            max     "2"
        }


        snd_soundmixer                   "Default_Mix"
        cloth_filter_transform_stateless "0"

        cl_joystick_enabled       "0"
        panorama_joystick_enabled "0"

        snd_event_browser_focus_events "true"

        cl_max_particle_pvs_aabb_edge_length "100"

        // Particles
        cl_aggregate_particles       "true"
        r_particle_batch_collections "1"

        citadel_enable_vdata_sound_preload "true"

        r_add_views_in_pre_output "1"

        // Disable Cubemap Brightening
        lb_cubemap_normalization_max "1"

        update_all_keyframed_in_spatial_partition_update               "0"
        parallel_update_surrounding_bounds_in_spatial_partition_update "1"
        always_perform_full_spatial_partition_update                   "1"
        cl_interp_parallel                                             "1"
        parallel_perform_invalidate_physics                            "1"
        phys_agg_world_compounds                                       "0"

        cl_updaterate                "128"
        sv_parallel_checktransmit    "2"
        net_gather_child_fields_only "1"
    }

    Memory
    {
        EstimatedMaxCPUMemUsageMB "1"
        EstimatedMinGPUMemUsageMB "1"

        ShowInsufficientPageFileMessageBox      "1"
        ShowLowAvailableVirtualMemoryMessageBox "1"
    }
}
