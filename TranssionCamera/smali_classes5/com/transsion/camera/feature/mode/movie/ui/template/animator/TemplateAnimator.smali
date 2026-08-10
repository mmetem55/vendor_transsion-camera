.class Lcom/transsion/camera/feature/mode/movie/ui/template/animator/TemplateAnimator;
.super Ljava/lang/Object;
.source "TemplateAnimator.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/template/animator/TemplateAnimator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/animator/TemplateAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/animator/TemplateAnimator;->mViewGroup:Landroid/view/ViewGroup;

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/animator/TemplateAnimator;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method startAnim()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/animator/TemplateAnimator;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/movie/R$anim;->layout_template_entrance_animation:I

    .line 38
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/animator/TemplateAnimator;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/animator/TemplateAnimator;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->scheduleLayoutAnimation()V

    return-void
.end method
