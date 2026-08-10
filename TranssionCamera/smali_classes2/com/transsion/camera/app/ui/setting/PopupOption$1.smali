.class Lcom/transsion/camera/app/ui/setting/PopupOption$1;
.super Ljava/lang/Object;
.source "PopupOption.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout$LayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/setting/PopupOption;-><init>(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutEnd()V
    .locals 8

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$600(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    move-result-object v1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$100(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$200(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$300(Lcom/transsion/camera/app/ui/setting/PopupOption;)I

    move-result v5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption$1;->this$0:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->access$400(Lcom/transsion/camera/app/ui/setting/PopupOption;)I

    move-result v6

    new-instance v7, Lcom/transsion/camera/app/ui/setting/PopupOption$1$1;

    invoke-direct {v7, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$1$1;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption$1;)V

    const/4 v4, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->startPopupAnimation(Landroid/view/ViewGroup;Landroid/view/View;ZIILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
