.class public Lcom/transsion/common/blur/GaussianBlur;
.super Ljava/lang/Object;
.source "GaussianBlur.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mRenderScript:Landroid/renderscript/RenderScript;

.field private mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GaussianBlur"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/common/blur/GaussianBlur;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 20
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/common/blur/GaussianBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 21
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/common/blur/GaussianBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 22
    sget-object p0, Lcom/transsion/common/blur/GaussianBlur;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GaussianBlur,create render:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6

    if-eqz p1, :cond_1

    .line 38
    iget-object v0, p0, Lcom/transsion/common/blur/GaussianBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/common/blur/GaussianBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 43
    iget-object v4, p0, Lcom/transsion/common/blur/GaussianBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    sget-object v5, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v4, p1, v5, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p1

    .line 45
    iget-object v3, p0, Lcom/transsion/common/blur/GaussianBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 46
    iget-object v4, p0, Lcom/transsion/common/blur/GaussianBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    int-to-float p2, p2

    invoke-virtual {v4, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 47
    iget-object p2, p0, Lcom/transsion/common/blur/GaussianBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {p2, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 48
    iget-object p0, p0, Lcom/transsion/common/blur/GaussianBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {p0, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 49
    invoke-virtual {v3, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 50
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->destroy()V

    .line 51
    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    .line 52
    sget-object p0, Lcom/transsion/common/blur/GaussianBlur;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "blurBitmap,render bitmap:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public destoryBlur()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/transsion/common/blur/GaussianBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 29
    iput-object v1, p0, Lcom/transsion/common/blur/GaussianBlur;->mScriptBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/transsion/common/blur/GaussianBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 33
    iput-object v1, p0, Lcom/transsion/common/blur/GaussianBlur;->mRenderScript:Landroid/renderscript/RenderScript;

    :cond_1
    return-void
.end method
