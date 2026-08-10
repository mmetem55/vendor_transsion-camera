.class public Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;
.super Landroid/app/DialogFragment;
.source "ConfirmationFragment.java"


# instance fields
.field private TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

.field private mSecureCamera:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->startManagePermissionDetails()V

    return-void
.end method

.method private finish()V
    .locals 1

    .line 141
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private startManagePermissionDetails()V
    .locals 3

    .line 51
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->mSecureCamera:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 53
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getDenyPermissions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 60
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->mSecureCamera:Z

    if-eqz v1, :cond_1

    const v1, 0x10008000

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    :cond_1
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->startActivity(Landroid/app/Fragment;Landroid/content/Intent;)Z

    goto :goto_0

    .line 65
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->mSecureCamera:Z

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->gotoAppPermissionDetails(Landroid/app/Fragment;ZLjava/lang/String;)V

    .line 68
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->mSecureCamera:Z

    if-eqz v0, :cond_3

    .line 69
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method


# virtual methods
.method public getPermissionStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 178
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "permgrouplab_storage"

    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "android.permission.CAMERA"

    .line 180
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "permgrouplab_camera"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "android.permission.RECORD_AUDIO"

    .line 182
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "permgrouplab_microphone"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 184
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 185
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 130
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 131
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->finish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "PERMISSION_DIALOG"

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getDenyPermissions()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->showDialogMsg(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 95
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "camera_permission_title"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera_permission_go_setting"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment$2;-><init>(Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    new-instance v1, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment$1;-><init>(Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;)V

    .line 108
    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    .line 120
    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x3

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 136
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 137
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->finish()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 75
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 76
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->mSecureCamera:Z

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public setPermissionManager(Lcom/transsion/camera/app/common/permission/PermissionManager;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    return-void
.end method

.method public setSecureCamera(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->mSecureCamera:Z

    return-void
.end method

.method public showDialogMsg(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 147
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 150
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    :cond_1
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera_permission_head"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 156
    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u3001"

    goto :goto_0

    :cond_2
    const-string v1, ","

    .line 161
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 162
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_4

    if-nez v5, :cond_3

    .line 165
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->getPermissionStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 167
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->getPermissionStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v4

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
