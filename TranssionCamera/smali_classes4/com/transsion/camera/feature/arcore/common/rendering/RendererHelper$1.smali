.class Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper$1;
.super Lcom/faceunity/pta_art/core/base/Task;
.source "RendererHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->setBackground(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;

    iput-object p3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper$1;->val$path:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/faceunity/pta_art/core/base/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper$1;->val$path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->access$000(Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;)Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->getTextureId()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 125
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->access$300()Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper$1;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->access$300()Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper$1;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->access$400(Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->access$500(Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 131
    :cond_2
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->access$300()Ljava/util/WeakHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;

    invoke-static {v1}, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->access$000(Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;)Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->getTextureId()I

    move-result v1

    invoke-static {v1, v0}, Lcom/transsion/camera/feature/arcore/common/utils/TextureUtil;->uploadImageToTexture(ILandroid/graphics/Bitmap;)Z

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->access$102(Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;Z)Z

    return-void

    .line 121
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->access$102(Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;Z)Z

    .line 122
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackground path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",backgroundTextureId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper$1;->this$0:Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;->access$000(Lcom/transsion/camera/feature/arcore/common/rendering/RendererHelper;)Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->getTextureId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
