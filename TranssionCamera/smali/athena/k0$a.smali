.class public final enum Lathena/k0$a;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lathena/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lathena/k0$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lathena/k0$a;

.field public static final enum b:Lathena/k0$a;

.field public static final enum c:Lathena/k0$a;

.field public static final enum d:Lathena/k0$a;

.field public static final enum e:Lathena/k0$a;

.field public static final enum f:Lathena/k0$a;

.field public static final enum g:Lathena/k0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lathena/k0$a;

    const-string v1, "NETWORK_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lathena/k0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lathena/k0$a;->a:Lathena/k0$a;

    .line 2
    new-instance v0, Lathena/k0$a;

    const-string v1, "NETWORK_WIFI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lathena/k0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lathena/k0$a;->b:Lathena/k0$a;

    .line 3
    new-instance v0, Lathena/k0$a;

    const-string v1, "NETWORK_2G"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lathena/k0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lathena/k0$a;->c:Lathena/k0$a;

    .line 4
    new-instance v0, Lathena/k0$a;

    const-string v1, "NETWORK_3G"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lathena/k0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lathena/k0$a;->d:Lathena/k0$a;

    .line 5
    new-instance v0, Lathena/k0$a;

    const-string v1, "NETWORK_4G"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lathena/k0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lathena/k0$a;->e:Lathena/k0$a;

    .line 6
    new-instance v0, Lathena/k0$a;

    const-string v1, "NETWORK_5G"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lathena/k0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lathena/k0$a;->f:Lathena/k0$a;

    .line 7
    new-instance v0, Lathena/k0$a;

    const-string v1, "NETWORK_ETHERNET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lathena/k0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lathena/k0$a;->g:Lathena/k0$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
