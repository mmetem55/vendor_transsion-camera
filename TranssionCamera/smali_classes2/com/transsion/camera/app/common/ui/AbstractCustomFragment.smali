.class public abstract Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;
.super Landroid/app/Fragment;
.source "AbstractCustomFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCustomStackId()Ljava/lang/String;
.end method

.method public abstract getCustomTag()Ljava/lang/String;
.end method

.method public abstract setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
.end method

.method public abstract setFragmentListener(Lcom/transsion/camera/app/common/ui/preference/FragmentPreference$FragmentListener;)V
.end method
