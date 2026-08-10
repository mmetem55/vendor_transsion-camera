.class Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager$MyDialogPreferenceUi;
.super Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;
.source "PreferenceItemUiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyDialogPreferenceUi"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 77
    invoke-static {}, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager;->access$000()Lcom/transsion/camera/app/common/ui/preference/BindViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager;->access$000()Lcom/transsion/camera/app/common/ui/preference/BindViewListener;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/common/ui/preference/BindViewListener;->onBindView(Landroid/view/View;Landroid/preference/Preference;)V

    :cond_0
    return-void
.end method
