.class Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI$1;
.super Ljava/lang/Object;
.source "TeleCameraTopBarItemUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI;->access$000(Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI;)Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI;->access$100(Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI;)Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI;->access$200(Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI;)V

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI;->access$300(Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI$1;->this$0:Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI;->access$400(Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/telecamera/TeleCameraTopBarItemUI$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method
