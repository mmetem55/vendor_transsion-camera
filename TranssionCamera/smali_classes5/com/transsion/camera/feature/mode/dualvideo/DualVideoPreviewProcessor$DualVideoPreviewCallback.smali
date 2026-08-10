.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "DualVideoPreviewProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DualVideoPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;


# direct methods
.method public static synthetic $r8$lambda$B7lHrRQUcdK-V0hGFuBg2JofJko(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->lambda$surfaceChangedCallback$0(II)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;)V
    .locals 0

    .line 616
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    return-void
.end method

.method private synthetic lambda$surfaceChangedCallback$0(II)V
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 619
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 622
    :cond_0
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$402(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;J)J

    .line 625
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    move/from16 v7, p2

    invoke-static {v3, v7}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$502(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 626
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 627
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :cond_1
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    if-ne v2, v3, :cond_2

    .line 630
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v5

    .line 631
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v6

    move/from16 v21, v6

    move v6, v5

    move/from16 v5, v21

    goto :goto_0

    :cond_2
    move v6, v1

    move v5, v2

    .line 634
    :goto_0
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v9

    invoke-virtual {v9, v6, v5}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->requestTexturePair(II)[I

    move-result-object v9

    invoke-static {v8, v9}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$902(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;[I)[I

    .line 635
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)J

    move-result-wide v8

    const-wide/16 v10, 0x2

    rem-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    const/16 v19, 0x1

    if-nez v8, :cond_3

    .line 636
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)[I

    move-result-object v8

    aget v8, v8, v4

    goto :goto_1

    .line 638
    :cond_3
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)[I

    move-result-object v8

    aget v8, v8, v19

    :goto_1
    move v15, v8

    .line 640
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    .line 641
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v8

    const/4 v9, 0x1

    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v10}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v10

    iget-object v11, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    .line 642
    invoke-static {v11}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v14

    iget-object v11, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v11}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v16

    iget-object v11, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v11}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v17

    iget-object v11, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v11}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v18

    iget-object v11, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v11}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v20

    move v11, v15

    move v12, v6

    move v13, v5

    move/from16 p1, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v20

    .line 641
    invoke-virtual/range {v8 .. v18}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->renderOesTextureTo2DTexture(ZIIIIIIIIZ)V

    .line 644
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    .line 645
    invoke-static {v10}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v11

    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v10}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v12

    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v10}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v13

    iget-object v10, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v10}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v14

    const/4 v15, 0x1

    move/from16 v18, v5

    move-object v5, v8

    move v10, v6

    move v6, v9

    move/from16 v7, p2

    move/from16 v8, p1

    move v9, v10

    move/from16 v20, v10

    move/from16 v10, v18

    .line 644
    invoke-virtual/range {v5 .. v15}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->renderOesTextureTo2DTexture(ZIIIIIIIIZ)V

    goto :goto_2

    :cond_4
    move/from16 v18, v5

    move/from16 v20, v6

    move/from16 p1, v15

    .line 647
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    .line 648
    invoke-static {v8}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v11

    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v12

    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v13

    iget-object v8, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v14

    const/4 v15, 0x1

    move/from16 v7, p2

    move/from16 v8, p1

    move/from16 v9, v20

    move/from16 v10, v18

    .line 647
    invoke-virtual/range {v5 .. v15}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->renderOesTextureTo2DTexture(ZIIIIIIIIZ)V

    .line 649
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v9

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    .line 650
    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v13

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v14

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v15

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v16

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v17

    move/from16 v10, p1

    move/from16 v11, v20

    move/from16 v12, v18

    .line 649
    invoke-virtual/range {v7 .. v17}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->renderOesTextureTo2DTexture(ZIIIIIIIIZ)V

    :goto_2
    move/from16 v6, v18

    move/from16 v5, v20

    .line 652
    invoke-static {v4, v4, v5, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 653
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v7

    move/from16 v8, p1

    move v9, v5

    move v10, v6

    move v11, v5

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->drawTexture(IIIII)V

    .line 655
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;

    move-result-object v7

    if-eqz v7, :cond_5

    move/from16 v8, p1

    if-lez v8, :cond_5

    if-eq v1, v3, :cond_5

    if-eq v2, v3, :cond_5

    .line 656
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;

    move-result-object v1

    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2400()[F

    move-result-object v2

    invoke-interface {v1, v2, v8}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;->notifyVideoRecorderData([FI)V

    .line 659
    :cond_5
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 660
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2502(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)Z

    .line 661
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;II)V

    .line 664
    :cond_6
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1, v5, v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;II)V

    .line 665
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1008(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)J

    return v19
.end method

.method public drawOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 21

    move-object/from16 v0, p0

    move/from16 v12, p3

    move/from16 v13, p4

    .line 671
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v1

    const/4 v14, 0x0

    if-nez v1, :cond_0

    return v14

    :cond_0
    mul-int/lit8 v1, v13, 0x10

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    .line 674
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 676
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v1

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v15, v3

    .line 677
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v11, v3

    .line 678
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v10, v3

    .line 679
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v9, v3

    .line 680
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v8, v3

    .line 681
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v7, v3

    .line 682
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v1

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v4, v3

    .line 683
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v3

    move/from16 p5, v15

    int-to-double v14, v3

    mul-double/2addr v14, v1

    div-double/2addr v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v14, v1

    .line 685
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->requestTexturePair(II)[I

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$902(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;[I)[I

    .line 686
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 687
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 688
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 690
    :cond_1
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v3

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    .line 691
    invoke-static {v6}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v15

    move/from16 v16, v4

    move v4, v5

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v17, v7

    move v7, v8

    move/from16 v8, v17

    move/from16 v18, v9

    move/from16 v9, v16

    move/from16 v19, v10

    move v10, v14

    move/from16 v20, v11

    move v11, v15

    .line 690
    invoke-virtual/range {v1 .. v11}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->renderOesTextureTo2DTexture(ZIIIIIIIIZ)V

    .line 693
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v11, 0x1

    move/from16 v3, p2

    move v4, v5

    move/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, v20

    move/from16 v9, v19

    move/from16 v10, v18

    invoke-virtual/range {v1 .. v11}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->renderOesTextureTo2DTexture(ZIIIIIIIIZ)V

    goto/16 :goto_0

    :cond_2
    move/from16 v16, v4

    move/from16 v17, v7

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    .line 696
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v11, 0x1

    move/from16 v3, p2

    move v4, v5

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v15, v8

    move/from16 v8, v20

    move/from16 v9, v19

    move/from16 v10, v18

    invoke-virtual/range {v1 .. v11}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->renderOesTextureTo2DTexture(ZIIIIIIIIZ)V

    .line 698
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 699
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 701
    :cond_3
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v3

    iget-object v4, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    .line 702
    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v11

    move/from16 v5, p3

    move/from16 v6, p4

    move v7, v15

    move/from16 v8, v17

    move/from16 v9, v16

    move v10, v14

    .line 701
    invoke-virtual/range {v1 .. v11}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->renderOesTextureTo2DTexture(ZIIIIIIIIZ)V

    :goto_0
    const/4 v1, 0x0

    .line 704
    invoke-static {v1, v1, v12, v13}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 705
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v2

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)[I

    move-result-object v0

    aget v1, v0, v1

    move-object v0, v2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->drawTexture(IIIII)V

    const/4 v0, 0x1

    return v0
.end method

.method public loadGLResourceCallback(I)V
    .locals 3

    .line 766
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadGLResourceCallback, resId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x67

    if-ne p1, v0, :cond_0

    .line 768
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2502(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)Z

    :cond_0
    return-void
.end method

.method public loadGLResourcesCallback([I)V
    .locals 10

    .line 774
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadGLResourcesCallback, resIds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 775
    aget v1, p1, v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xbb8

    const/16 v6, 0x3e8

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/16 v9, 0x65

    if-eq v1, v9, :cond_9

    const/16 v9, 0x66

    if-ne v1, v9, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v9, 0x64

    if-ne v1, v9, :cond_1

    .line 786
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    aget v1, p1, v7

    aget p1, p1, v8

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;II)V

    goto/16 :goto_5

    :cond_1
    const/16 v9, 0x68

    if-ne v1, v9, :cond_7

    .line 788
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    aget p1, p1, v8

    if-ne p1, v8, :cond_2

    move p1, v8

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    invoke-static {v1, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2202(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)Z

    .line 789
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p1

    if-eq p1, v8, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    .line 790
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p1

    if-ne p1, v7, :cond_5

    .line 791
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 792
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1, v6, v0, v4, v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;IIJ)V

    goto :goto_1

    .line 794
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1, v6, v8, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;IIJ)V

    .line 797
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 798
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 799
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;->notifyVideoStartRecorder()V

    goto :goto_5

    .line 801
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;->notifyVideoStopRecorder()V

    goto :goto_5

    :cond_7
    const/16 v2, 0x69

    if-ne v1, v2, :cond_e

    .line 805
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    aget p1, p1, v8

    if-ne p1, v8, :cond_8

    move v0, v8

    :cond_8
    invoke-static {v1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3802(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)Z

    goto :goto_5

    .line 776
    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    aget v9, p1, v8

    invoke-static {v1, v9}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1102(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 777
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    aget v7, p1, v7

    if-ne v7, v8, :cond_a

    move v7, v8

    goto :goto_3

    :cond_a
    move v7, v0

    :goto_3
    invoke-static {v1, v7}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1702(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)Z

    .line 778
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/4 v7, 0x3

    aget v9, p1, v7

    if-ne v9, v8, :cond_b

    move v9, v8

    goto :goto_4

    :cond_b
    move v9, v0

    :goto_4
    invoke-static {v1, v9}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V

    const/4 v1, 0x4

    .line 779
    aget v1, p1, v1

    if-nez v1, :cond_d

    .line 780
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/16 v9, 0x3e9

    aget p1, p1, v7

    if-ne p1, v8, :cond_c

    const-wide/16 v2, 0x1f4

    :cond_c
    invoke-static {v1, v9, v0, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;IIJ)V

    .line 782
    :cond_d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 783
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1, v6, v0, v4, v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;IIJ)V

    .line 807
    :cond_e
    :goto_5
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setDualVideoWindowStyle(I)V

    return-void
.end method

.method public modeInitCallback()V
    .locals 2

    .line 711
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "modeInitCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 712
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    return-void
.end method

.method public modeUninitCallback()V
    .locals 2

    .line 717
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "modeUninitCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->destroy()V

    .line 720
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$302(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2202(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)Z

    .line 723
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 724
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 725
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    return-void
.end method

.method public surfaceChangedCallback(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 736
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChangedCallback, width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 737
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 738
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->updateSurfaceSize(II)V

    .line 739
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 740
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/graphics/SurfaceTexture;

    move-result-object p0

    invoke-interface {p1, p0, p3, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    .line 743
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1, p2, p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;II)V

    .line 744
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;II)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 730
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "surfaceCreatedCallback"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 731
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 754
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "surfaceDestoryCallback"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 755
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 756
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->destroy()V

    .line 758
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2202(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)Z

    .line 759
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 760
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 761
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    return-void
.end method
