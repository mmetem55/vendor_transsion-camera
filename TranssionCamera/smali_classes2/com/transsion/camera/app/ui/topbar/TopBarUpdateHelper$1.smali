.class Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TopBarUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->update(Ljava/util/Map;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;Landroid/view/View;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->mContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
