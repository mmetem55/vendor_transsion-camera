.class Lcom/faceunity/FURenderer$28;
.super Ljava/lang/Object;
.source "FURenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer;->onLightMakeupCombinationSelected(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/FURenderer;

.field final synthetic val$integer:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer;Ljava/lang/Integer;)V
    .locals 0

    .line 1834
    iput-object p1, p0, Lcom/faceunity/FURenderer$28;->this$0:Lcom/faceunity/FURenderer;

    iput-object p2, p0, Lcom/faceunity/FURenderer$28;->val$integer:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1837
    iget-object v0, p0, Lcom/faceunity/FURenderer$28;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 1839
    iget-object p0, p0, Lcom/faceunity/FURenderer$28;->val$integer:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/faceunity/param/MakeupParamHelper;->getMakeupIntensityKeyByType(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    :cond_0
    return-void
.end method
