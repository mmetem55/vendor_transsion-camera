.class Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$1;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "SuperNightFilterMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$1;->this$0:Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$1;->this$0:Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;

    invoke-static {p0, p1, p2, p4, p3}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->access$000(Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;Landroid/graphics/SurfaceTexture;III)Z

    move-result p0

    return p0
.end method

.method public drawOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$1;->this$0:Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;

    invoke-static {p0, p1, p2, p4, p3}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->access$000(Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;Landroid/graphics/SurfaceTexture;III)Z

    move-result p0

    return p0
.end method

.method public modeUninitCallback()V
    .locals 2

    .line 151
    invoke-static {}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "surfaceUninitCallback()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$1;->this$0:Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->releaseRenderResource()V

    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$1;->this$0:Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->access$200(Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;)Landroid/content/Context;

    move-result-object p0

    const-string p1, "assets:/meishesdk.lic"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->init(Landroid/content/Context;Ljava/lang/String;I)Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 140
    invoke-static {}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "surfaceDestroycallback()"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$1;->this$0:Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->releaseRenderResource()V

    return-void
.end method
