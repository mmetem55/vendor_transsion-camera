.class public Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;
.super Ljava/lang/Object;
.source "TextureManager.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private m2DTextures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TextureManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->m2DTextures:Ljava/util/List;

    return-void
.end method

.method private create2DTexture(II)I
    .locals 3

    .line 54
    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->initTextureId(II)I

    move-result p0

    .line 55
    sget-object v0, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create2DTexture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method


# virtual methods
.method public clear()V
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->m2DTextures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;

    .line 61
    iget v2, v1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v4, 0x1

    new-array v5, v4, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    .line 62
    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 63
    iput v3, v1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texId:I

    goto :goto_0

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->m2DTextures:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getA2DTexture(II)Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;
    .locals 3

    .line 20
    sget-object v0, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getA2DTexture, total size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->m2DTextures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ge p1, p2, :cond_0

    const-string p0, "here 2d texture\'s width is no smaller than height"

    .line 22
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->m2DTextures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;

    .line 27
    iget v2, v1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->width:I

    if-ne v2, p1, :cond_1

    iget v2, v1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->height:I

    if-ne v2, p2, :cond_1

    iget-boolean v2, v1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isIdle:Z

    if-eqz v2, :cond_1

    return-object v1

    .line 31
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->create2DTexture(II)I

    move-result v0

    .line 32
    new-instance v1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;-><init>(IIII)V

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->m2DTextures:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public getTexForDraw()Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;
    .locals 2

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->m2DTextures:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;

    .line 47
    iget-boolean v1, v0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isTexToDraw:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public resetStatusToIdle()V
    .locals 2

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/TextureManager;->m2DTextures:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;

    const/4 v1, 0x1

    .line 40
    iput-boolean v1, v0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isIdle:Z

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, v0, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->isTexToDraw:Z

    goto :goto_0

    :cond_0
    return-void
.end method
