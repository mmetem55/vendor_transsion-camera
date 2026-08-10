.class final Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ViewPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "EditFaceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ViewPagerAdapter;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    .line 132
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ViewPagerAdapter;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)[Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ViewPagerAdapter;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->access$000(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)[Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
