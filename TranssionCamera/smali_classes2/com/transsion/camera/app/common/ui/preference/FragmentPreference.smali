.class public Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;
.super Landroid/preference/Preference;
.source "FragmentPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/preference/FragmentPreference$FragmentListener;,
        Lcom/transsion/camera/app/common/ui/preference/FragmentPreference$PreferenceListener;
    }
.end annotation


# instance fields
.field private mCustomFragment:Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;

.field private mPreferenceListener:Lcom/transsion/camera/app/common/ui/preference/FragmentPreference$PreferenceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getCustomFragment()Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;->mCustomFragment:Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;

    return-object p0
.end method

.method protected onClick()V
    .locals 1

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;->mPreferenceListener:Lcom/transsion/camera/app/common/ui/preference/FragmentPreference$PreferenceListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference$PreferenceListener;->onPreferenceClick(Lcom/transsion/camera/app/common/ui/preference/FragmentPreference$FragmentListener;)V

    return-void
.end method

.method public seCustomFragment(Landroid/app/Fragment;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;->mCustomFragment:Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;

    return-void
.end method

.method public setPreferenceListener(Lcom/transsion/camera/app/common/ui/preference/FragmentPreference$PreferenceListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;->mPreferenceListener:Lcom/transsion/camera/app/common/ui/preference/FragmentPreference$PreferenceListener;

    return-void
.end method
