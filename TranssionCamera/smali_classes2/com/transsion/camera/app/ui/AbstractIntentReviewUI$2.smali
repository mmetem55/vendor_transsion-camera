.class Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$2;
.super Ljava/lang/Object;
.source "AbstractIntentReviewUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->setupActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 212
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->access$500(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$2;->this$0:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->access$500(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;->onConfirmed()V

    :cond_0
    return-void
.end method
