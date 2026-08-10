.class public Lcom/transsion/camera/app/ui/widget/AnimationRotationView;
.super Lcom/transsion/camera/app/ui/widget/RotateImageView;
.source "AnimationRotationView.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/widget/AnimationRotationView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/AnimationRotationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/AnimationRotationView;->mCurrentId:I

    return-void
.end method

.method private setAnimationRunning(Z)V
    .locals 2

    .line 41
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    sget-object v0, Lcom/transsion/camera/app/ui/widget/AnimationRotationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setAnimationRunning start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_1
    if-nez p1, :cond_2

    .line 49
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 50
    sget-object p1, Lcom/transsion/camera/app/ui/widget/AnimationRotationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "setAnimationRunning stop"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_2
    return-void
.end method


# virtual methods
.method public setImageResource(I)V
    .locals 1

    .line 31
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/AnimationRotationView;->mCurrentId:I

    if-eq v0, p1, :cond_0

    .line 32
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/AnimationRotationView;->mCurrentId:I

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/AnimationRotationView;->setAnimationRunning(Z)V

    .line 34
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x1

    .line 35
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/AnimationRotationView;->setAnimationRunning(Z)V

    :cond_0
    return-void
.end method
