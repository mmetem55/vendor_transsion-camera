.class Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "BaseFilterProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArcFilterPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$1;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;-><init>(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->drawFilterPreview(Landroid/graphics/SurfaceTexture;III)Z

    move-result p0

    return p0
.end method

.method public drawOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 6

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->drawFilterPreviewOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result p0

    return p0
.end method

.method public loadGLResourceCallback(I)V
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->loadGLResourceFilterPreviewCallback(I)V

    return-void
.end method

.method public loadGLResourcesCallback([I)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->access$400(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;[I)V

    .line 278
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->loadGLResourcesFilterPreviewCallback([I)V

    return-void
.end method

.method public modeInitCallback()V
    .locals 2

    .line 237
    invoke-static {}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "modeInitCallback begin"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->access$200(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_MODE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->initFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V

    return-void
.end method

.method public modePauseCallback()V
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->pauseFilterPreviewCallBack()V

    return-void
.end method

.method public modeReloadCallback()V
    .locals 2

    .line 250
    invoke-static {}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "modeReloadCallback begin"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->access$300(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->access$200(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V

    .line 253
    invoke-static {}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "modeReloadCallback end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public modeResumeCallback()V
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->resumeFilterPreviewCallBack()V

    return-void
.end method

.method public modeUninitCallback()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->access$300(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_MODE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->unInitFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V

    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 258
    invoke-static {}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "surfaceCreatedCallback"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 259
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->access$200(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    sget-object p1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_SURFACE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->initFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 265
    invoke-static {}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "surfaceDestoryCallback"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 266
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->access$300(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V

    .line 267
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;->this$0:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    sget-object p1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;->TYPE_SURFACE:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->unInitFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V

    return-void
.end method
