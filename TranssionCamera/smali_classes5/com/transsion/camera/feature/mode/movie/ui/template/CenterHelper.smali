.class Lcom/transsion/camera/feature/mode/movie/ui/template/CenterHelper;
.super Ljava/lang/Object;
.source "CenterHelper.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/template/CenterHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/CenterHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCenterRegion(Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;I)Landroid/graphics/Rect;
    .locals 5

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/16 v1, 0x5a

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_1

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_0

    .line 50
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mTopBarHeight:I

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mScreenSize:Landroid/util/Size;

    .line 52
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mScreenSize:Landroid/util/Size;

    .line 53
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mModePickerHeight:I

    sub-int/2addr v4, p0

    .line 50
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 43
    :cond_0
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mTopBarHeight:I

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mScreenSize:Landroid/util/Size;

    .line 45
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mModePickerHeight:I

    sub-int/2addr v3, v4

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mScreenSize:Landroid/util/Size;

    .line 46
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    .line 43
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 36
    :cond_1
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mModePickerHeight:I

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mScreenSize:Landroid/util/Size;

    .line 38
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mScreenSize:Landroid/util/Size;

    .line 39
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mTopBarHeight:I

    sub-int/2addr v4, p0

    .line 36
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 29
    :cond_2
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mModePickerHeight:I

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mScreenSize:Landroid/util/Size;

    .line 31
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mTopBarHeight:I

    sub-int/2addr v3, v4

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/TemplateUISpec;->mScreenSize:Landroid/util/Size;

    .line 32
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    .line 29
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 57
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/template/CenterHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCenterRegion orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", rect: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method
