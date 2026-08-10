.class public final Lcom/transsion/camera/feature/arcore/common/fragments/FragmentUtil;
.super Ljava/lang/Object;
.source "FragmentUtil.java"


# static fields
.field public static final FRAGMENT_ENTRY_AvatarPTA:Ljava/lang/String; = "entry_avatarpta"

.field public static final FRAGMENT_ENTRY_ModuleId:Ljava/lang/String; = "entry_moduleid"

.field public static final FRAGMENT_NEW_AVATAR_GENDER:Ljava/lang/String; = "new_avatar_gender"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pushFragment(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;ZZ)V
    .locals 1

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 20
    invoke-virtual {v0, p2, p2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 23
    :cond_0
    sget p2, Lcom/transsion/camera/feature/arcore/R$id;->fragment_main_root:I

    invoke-virtual {v0, p2, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 25
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method
