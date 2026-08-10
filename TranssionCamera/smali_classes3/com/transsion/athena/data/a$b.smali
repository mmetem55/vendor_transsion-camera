.class public final enum Lcom/transsion/athena/data/a$b;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/athena/data/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/athena/data/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/transsion/athena/data/a$b;

.field public static final enum b:Lcom/transsion/athena/data/a$b;

.field public static final enum c:Lcom/transsion/athena/data/a$b;

.field public static final enum d:Lcom/transsion/athena/data/a$b;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/athena/data/a$b;

    const-string v1, "EVENTS"

    const/4 v2, 0x0

    const-string v3, "events"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/athena/data/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/athena/data/a$b;->a:Lcom/transsion/athena/data/a$b;

    .line 2
    new-instance v0, Lcom/transsion/athena/data/a$b;

    const-string v1, "COUNTER"

    const/4 v2, 0x1

    const-string v3, "counter"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/athena/data/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/athena/data/a$b;->b:Lcom/transsion/athena/data/a$b;

    .line 3
    new-instance v0, Lcom/transsion/athena/data/a$b;

    const-string v1, "TID_CONFIG"

    const/4 v2, 0x2

    const-string v3, "tidconfig"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/athena/data/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/athena/data/a$b;->c:Lcom/transsion/athena/data/a$b;

    .line 4
    new-instance v0, Lcom/transsion/athena/data/a$b;

    const-string v1, "APPID_CONFIG"

    const/4 v2, 0x3

    const-string v3, "appidconfig"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/athena/data/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/athena/data/a$b;->d:Lcom/transsion/athena/data/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/transsion/athena/data/a$b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/athena/data/a$b;->e:Ljava/lang/String;

    return-object p0
.end method
