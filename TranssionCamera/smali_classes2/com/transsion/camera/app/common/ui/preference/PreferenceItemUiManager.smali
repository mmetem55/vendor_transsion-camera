.class public Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager;
.super Ljava/lang/Object;
.source "PreferenceItemUiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager$NonePreferenceUi;,
        Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager$FragmentPreferenceUi;,
        Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager$MyDialogPreferenceUi;,
        Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager$OSListPreferenceUi;,
        Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager$StateSwitchPreferenceUi;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mBindViewListener:Lcom/transsion/camera/app/common/ui/preference/BindViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PreferenceItemUiManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/app/common/ui/preference/BindViewListener;
    .locals 1

    .line 11
    sget-object v0, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager;->mBindViewListener:Lcom/transsion/camera/app/common/ui/preference/BindViewListener;

    return-object v0
.end method

.method public static create(ILandroid/content/Context;)Landroid/preference/Preference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/preference/Preference;",
            ">(I",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager$FragmentPreferenceUi;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager$FragmentPreferenceUi;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 24
    :cond_1
    new-instance p0, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager$OSListPreferenceUi;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager$OSListPreferenceUi;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 20
    :cond_2
    new-instance p0, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager$StateSwitchPreferenceUi;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager$StateSwitchPreferenceUi;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 27
    :cond_3
    new-instance p0, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager$MyDialogPreferenceUi;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager$MyDialogPreferenceUi;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 33
    :cond_4
    new-instance p0, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager$NonePreferenceUi;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager$NonePreferenceUi;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object p0
.end method

.method public static setBindViewListener(Lcom/transsion/camera/app/common/ui/preference/BindViewListener;)V
    .locals 0

    .line 40
    sput-object p0, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager;->mBindViewListener:Lcom/transsion/camera/app/common/ui/preference/BindViewListener;

    return-void
.end method
