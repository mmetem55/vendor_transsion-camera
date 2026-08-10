.class public Lcom/transsion/camera/feature/mode/movie/ui/template/animator/EntranceAnimator;
.super Ljava/lang/Object;
.source "EntranceAnimator.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mShaderDecoration:Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;

.field private mTemplateAnimator:Lcom/transsion/camera/feature/mode/movie/ui/template/animator/TemplateAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/template/animator/EntranceAnimator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/animator/EntranceAnimator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/animator/EntranceAnimator;->mShaderDecoration:Lcom/transsion/camera/feature/mode/movie/ui/template/shader/ShaderDecoration;

    .line 29
    new-instance p2, Lcom/transsion/camera/feature/mode/movie/ui/template/animator/TemplateAnimator;

    invoke-direct {p2, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/animator/TemplateAnimator;-><init>(Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/animator/EntranceAnimator;->mTemplateAnimator:Lcom/transsion/camera/feature/mode/movie/ui/template/animator/TemplateAnimator;

    return-void
.end method


# virtual methods
.method public startAnim()V
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/animator/EntranceAnimator;->mTemplateAnimator:Lcom/transsion/camera/feature/mode/movie/ui/template/animator/TemplateAnimator;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/animator/TemplateAnimator;->startAnim()V

    return-void
.end method
