.class Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$3;
.super Ljava/lang/Object;
.source "PreferenceItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$3;->this$0:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 477
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$3;->this$0:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->access$300(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 478
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$3;->this$0:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;

    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->access$300(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    const-string p1, "on"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
