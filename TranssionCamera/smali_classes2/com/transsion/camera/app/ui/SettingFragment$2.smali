.class Lcom/transsion/camera/app/ui/SettingFragment$2;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/preference/FragmentPreference$PreferenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/SettingFragment;->addCustomFragmentTransaction(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/SettingFragment;

.field final synthetic val$fragment:Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;

.field final synthetic val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/SettingFragment;Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;Landroid/preference/Preference;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/transsion/camera/app/ui/SettingFragment$2;->this$0:Lcom/transsion/camera/app/ui/SettingFragment;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/SettingFragment$2;->val$fragment:Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/SettingFragment$2;->val$preference:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/transsion/camera/app/common/ui/preference/FragmentPreference$FragmentListener;)V
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment$2;->val$fragment:Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/SettingFragment$2;->this$0:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/SettingFragment;->access$000(Lcom/transsion/camera/app/ui/SettingFragment;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment$2;->val$fragment:Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;->setFragmentListener(Lcom/transsion/camera/app/common/ui/preference/FragmentPreference$FragmentListener;)V

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/app/ui/SettingFragment$2;->this$0:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment$2;->val$preference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_micro_pan_tilt_calibration"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment$2;->this$0:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "setting_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    const v0, 0x7f02001e

    const v1, 0x7f02001f

    .line 256
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    goto :goto_0

    :cond_0
    const v0, 0x7f020031

    const v1, 0x7f020032

    const v2, 0x7f020033

    const v3, 0x7f020034

    .line 264
    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment$2;->val$fragment:Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;->getCustomStackId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment$2;->this$0:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/SettingFragment;->access$100(Lcom/transsion/camera/app/ui/SettingFragment;)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/SettingFragment$2;->val$fragment:Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;->getCustomTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
