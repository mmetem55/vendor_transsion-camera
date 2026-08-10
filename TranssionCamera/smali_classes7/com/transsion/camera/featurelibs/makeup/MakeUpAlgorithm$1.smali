.class Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$1;
.super Ljava/lang/Object;
.source "MakeUpAlgorithm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;


# direct methods
.method constructor <init>(Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$1;->this$0:Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$1;->this$0:Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->access$000(Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$1;->this$0:Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->unInit()V

    :cond_0
    return-void
.end method
