.class public Lcom/transsion/camera/ui/setting/facedetection/FaceView;
.super Landroid/view/View;
.source "FaceView.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFaceIndicator:Landroid/graphics/drawable/Drawable;

.field private mFaces:[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

.field private mGenderView:Lcom/transsion/camera/ui/setting/facedetection/GenderView;

.field private mShowGender:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 32
    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mShowGender:Z

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080635

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    .line 38
    new-instance p2, Lcom/transsion/camera/ui/setting/facedetection/GenderView;

    invoke-direct {p2, p1}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mGenderView:Lcom/transsion/camera/ui/setting/facedetection/GenderView;

    return-void
.end method


# virtual methods
.method public clearFaces()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mFaces:[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mGenderView:Lcom/transsion/camera/ui/setting/facedetection/GenderView;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->clearGender()V

    const/16 v0, 0x8

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mFaces:[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 62
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 63
    invoke-virtual {v3}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 64
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 65
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mFaceIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mShowGender:Z

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mGenderView:Lcom/transsion/camera/ui/setting/facedetection/GenderView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mFaces:[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/ui/setting/facedetection/GenderView;->drawGender(Landroid/graphics/Canvas;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    .line 73
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setFaces([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .locals 3

    .line 42
    sget-object v0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFaces: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mFaces:[Lcom/transsion/camera/utils/SettingInfo$CameraFace;

    if-eqz p1, :cond_1

    .line 44
    array-length p1, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x8

    .line 45
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showGender(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->mShowGender:Z

    return-void
.end method
