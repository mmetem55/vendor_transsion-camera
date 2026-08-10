.class Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$7;
.super Ljava/lang/Object;
.source "FaceBeautyExRoot.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter$ExpandableToggleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$7;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private saveExpandState(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V
    .locals 4

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$7;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-nez v0, :cond_0

    .line 392
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "saveExpandState mFaceBeautySetting is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 395
    :cond_0
    instance-of v0, p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;

    if-nez v0, :cond_1

    return-void

    .line 398
    :cond_1
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;

    .line 399
    iget-boolean v0, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 400
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$7;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_expand"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$7;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    .line 401
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$300(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    .line 400
    invoke-virtual {v2, p1, v0, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onCollapse(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V
    .locals 0

    .line 387
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$7;->saveExpandState(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    return-void
.end method

.method public onExpand(Ljava/util/ArrayList;Lcom/transsion/camera/feature/mode/makeup/adapter/Item;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/makeup/adapter/Item;",
            ">;",
            "Lcom/transsion/camera/feature/mode/makeup/adapter/Item;",
            "I)V"
        }
    .end annotation

    .line 381
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onExpand,mCurrentFeatureKey:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$7;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->access$200(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 382
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$7;->saveExpandState(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    return-void
.end method
