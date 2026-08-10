.class public final enum Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;
.super Ljava/lang/Enum;
.source "BaseFilterProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "FilterLoadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

.field public static final enum LOADED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

.field public static final enum LOADING:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

.field public static final enum UNDEFINED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 48
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->UNDEFINED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    new-instance v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    const-string v3, "LOADING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->LOADING:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    new-instance v3, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    const-string v5, "LOADED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->LOADED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 47
    sput-object v5, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->$VALUES:[Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;
    .locals 1

    .line 47
    const-class v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;
    .locals 1

    .line 47
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->$VALUES:[Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    return-object v0
.end method
