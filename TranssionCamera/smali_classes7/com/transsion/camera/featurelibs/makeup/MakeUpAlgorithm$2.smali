.class Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$2;
.super Ljava/lang/Object;
.source "MakeUpAlgorithm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->handleMakeUpAlgorithm(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$2;->this$0:Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$2;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$2;->this$0:Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->access$102(Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;Z)Z

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$2;->this$0:Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm$2;->val$value:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;->access$202(Lcom/transsion/camera/featurelibs/makeup/MakeUpAlgorithm;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
