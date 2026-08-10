.class public final enum Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;
.super Ljava/lang/Enum;
.source "MessageEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ardrawlines/unity/MessageEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

.field public static final enum PHOTO_ERROR:Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

.field public static final enum PHOTO_PATH:Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

.field public static final enum VIDEO_ERROR:Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

.field public static final enum VIDEO_PATH:Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

    .line 51
    sget-object v1, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;->PHOTO_PATH:Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;->VIDEO_PATH:Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;->PHOTO_ERROR:Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;->VIDEO_ERROR:Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

    const-string v1, "PHOTO_PATH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;->PHOTO_PATH:Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

    .line 53
    new-instance v0, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

    const-string v1, "VIDEO_PATH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;->VIDEO_PATH:Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

    .line 54
    new-instance v0, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

    const-string v1, "PHOTO_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;->PHOTO_ERROR:Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

    .line 55
    new-instance v0, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

    const-string v1, "VIDEO_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;->VIDEO_ERROR:Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

    .line 51
    invoke-static {}, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;->$values()[Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

    move-result-object v0

    sput-object v0, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;->$VALUES:[Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;
    .locals 1

    .line 51
    const-class v0, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;
    .locals 1

    .line 51
    sget-object v0, Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;->$VALUES:[Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

    invoke-virtual {v0}, [Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

    return-object v0
.end method
