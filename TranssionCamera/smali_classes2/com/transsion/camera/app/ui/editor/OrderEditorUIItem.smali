.class public Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;
.super Ljava/lang/Object;
.source "OrderEditorUIItem.java"


# instance fields
.field private final mFeatureResource:Lcom/transsion/camera/app/common/FeatureResource;

.field private mIsTitle:Z


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/FeatureResource;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mIsTitle:Z

    .line 14
    iput-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mFeatureResource:Lcom/transsion/camera/app/common/FeatureResource;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;)V

    .line 19
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mIsTitle:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 40
    instance-of v0, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    if-eqz v0, :cond_0

    .line 41
    check-cast p1, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 43
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mFeatureResource:Lcom/transsion/camera/app/common/FeatureResource;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mFeatureResource:Lcom/transsion/camera/app/common/FeatureResource;

    iget-object p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mFeatureResource:Lcom/transsion/camera/app/common/FeatureResource;

    iget-object p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    return-object p0
.end method

.method public isTitle()Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;->mIsTitle:Z

    return p0
.end method
