.class public Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;
.super Ljava/lang/Object;
.source "TranTrancareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Singleton"
.end annotation


# static fields
.field private static final SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton<",
            "Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 813
    new-instance v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton$1;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton$1;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;

    return-void
.end method

.method protected static cleanService()V
    .locals 1

    .line 810
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->clean()V

    return-void
.end method

.method protected static getService()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    .locals 1

    .line 805
    sget-object v0, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$Singleton;->SINGLETON:Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;

    invoke-virtual {v0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    return-object v0
.end method
