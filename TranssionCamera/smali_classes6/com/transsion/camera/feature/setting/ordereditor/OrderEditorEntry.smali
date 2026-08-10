.class public Lcom/transsion/camera/feature/setting/ordereditor/OrderEditorEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "OrderEditorEntry.java"


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mOrderEditor:Lcom/transsion/camera/feature/setting/ordereditor/OrderEditor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 13
    new-instance p1, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class p2, Lcom/transsion/camera/feature/setting/ordereditor/OrderEditorEntry;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/ordereditor/OrderEditorEntry;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/ordereditor/OrderEditorEntry;->mOrderEditor:Lcom/transsion/camera/feature/setting/ordereditor/OrderEditor;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/transsion/camera/feature/setting/ordereditor/OrderEditor;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/ordereditor/OrderEditor;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/ordereditor/OrderEditorEntry;->mOrderEditor:Lcom/transsion/camera/feature/setting/ordereditor/OrderEditor;

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/ordereditor/OrderEditorEntry;->mOrderEditor:Lcom/transsion/camera/feature/setting/ordereditor/OrderEditor;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 36
    const-class p0, Lcom/transsion/camera/feature/setting/ordereditor/OrderEditorEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0

    .line 31
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method
