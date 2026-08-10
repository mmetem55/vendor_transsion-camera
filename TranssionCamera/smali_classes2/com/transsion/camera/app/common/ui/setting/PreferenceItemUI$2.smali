.class Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$2;
.super Ljava/lang/Object;
.source "PreferenceItemUI.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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

    .line 461
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 464
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->access$202(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;Ljava/lang/String;)Ljava/lang/String;

    .line 465
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->access$300(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 466
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->access$300(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;

    invoke-static {p2}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->access$200(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 468
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;

    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->access$400(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)V

    const/4 p0, 0x1

    return p0
.end method
