.class Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MagicSkyScannerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    .line 87
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$300(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$212(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;I)I

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$400(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$500(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_5

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_3

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_1

    .line 111
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$200(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$900(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lt p1, v1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$900(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$700(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$202(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;I)I

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$200(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$800(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;II)V

    goto/16 :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$200(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$600(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    if-gt p1, v1, :cond_2

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$600(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$700(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$202(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;I)I

    .line 107
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$200(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$800(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;II)V

    goto/16 :goto_0

    .line 98
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$200(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$900(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    if-gt p1, v1, :cond_4

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$900(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$700(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$202(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;I)I

    .line 101
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$200(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$800(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;II)V

    goto :goto_0

    .line 92
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$200(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$600(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lt p1, v1, :cond_6

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$600(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$700(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$202(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;I)I

    .line 95
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$200(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$800(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;II)V

    goto :goto_0

    .line 118
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$200(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$1000(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v1

    if-le p1, v1, :cond_8

    .line 119
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$202(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;I)I

    .line 121
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$200(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$800(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;II)V

    .line 123
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$1100(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->startAnim()V

    return-void
.end method
