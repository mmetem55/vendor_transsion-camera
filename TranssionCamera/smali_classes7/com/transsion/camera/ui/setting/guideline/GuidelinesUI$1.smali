.class Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$1;
.super Ljava/lang/Object;
.source "GuidelinesUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$1;->this$0:Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 216
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_guidelines"

    .line 219
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$1;->this$0:Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;

    invoke-static {p0, p2}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->access$200(Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
