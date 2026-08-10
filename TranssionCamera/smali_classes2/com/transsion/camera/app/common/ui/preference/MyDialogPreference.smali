.class public Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;
.super Landroid/preference/DialogPreference;
.source "MyDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;
    }
.end annotation


# instance fields
.field private mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mCurrentCount:I

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mDialogListener:Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;

.field private mIsDebugPreference:Z


# direct methods
.method public static synthetic $r8$lambda$Cb44scPqc0Eja3zc6C6Ms2UKsbE(Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->lambda$onClick$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$U5BY8VgT8ISNTqbmewSfWHS7MNA(Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->lambda$onClick$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mIsDebugPreference:Z

    .line 31
    iput v0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mCurrentCount:I

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method private closeDeveloperMode()V
    .locals 1

    .line 118
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 120
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "key_developer_mode"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onClick$0(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x1

    .line 74
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->onDialogClosed(Z)V

    .line 75
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onClick$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x0

    .line 78
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->onDialogClosed(Z)V

    .line 79
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private openDeveloperMode()V
    .locals 2

    .line 110
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 112
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "key_developer_mode"

    const-string v1, "on"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method


# virtual methods
.method public hideDialog()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/app/common/R$string;->btn_negative:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v1

    .line 73
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;)V

    invoke-virtual {v1, v2, v3}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;)V

    .line 77
    invoke-virtual {v1, v0, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 82
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mDialogListener:Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;->onDialogClosed(Z)V

    .line 90
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mIsDebugPreference:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 92
    iget p1, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mCurrentCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mCurrentCount:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 94
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->openDeveloperMode()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 97
    iput p1, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mCurrentCount:I

    .line 98
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->closeDeveloperMode()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDialogListener(Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mDialogListener:Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setKey(Ljava/lang/String;)V

    const-string v0, "key_restore_settings"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mIsDebugPreference:Z

    return-void
.end method
