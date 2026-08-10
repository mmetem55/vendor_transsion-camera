.class public Lnet/sourceforge/zbar/Symbol;
.super Ljava/lang/Object;
.source "Symbol.java"


# static fields
.field public static final CODABAR:I = 0x26

.field public static final CODE128:I = 0x80

.field public static final CODE39:I = 0x27

.field public static final CODE93:I = 0x5d

.field public static final DATABAR:I = 0x22

.field public static final DATABAR_EXP:I = 0x23

.field public static final EAN13:I = 0xd

.field public static final EAN8:I = 0x8

.field public static final I25:I = 0x19

.field public static final ISBN10:I = 0xa

.field public static final ISBN13:I = 0xe

.field public static final NONE:I = 0x0

.field public static final PARTIAL:I = 0x1

.field public static final PDF417:I = 0x39

.field public static final QRCODE:I = 0x40

.field public static final UPCA:I = 0xc

.field public static final UPCE:I = 0x9


# instance fields
.field private peer:J

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "zbar"

    .line 77
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lnet/sourceforge/zbar/Symbol;->init()V

    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-wide p1, p0, Lnet/sourceforge/zbar/Symbol;->peer:J

    return-void
.end method

.method private native destroy(J)V
.end method

.method private native getComponents(J)J
.end method

.method private native getLocationSize(J)I
.end method

.method private native getLocationX(JI)I
.end method

.method private native getLocationY(JI)I
.end method

.method private native getType(J)I
.end method

.method private static native init()V
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 5

    monitor-enter p0

    .line 96
    :try_start_0
    iget-wide v0, p0, Lnet/sourceforge/zbar/Symbol;->peer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 97
    invoke-direct {p0, v0, v1}, Lnet/sourceforge/zbar/Symbol;->destroy(J)V

    .line 98
    iput-wide v2, p0, Lnet/sourceforge/zbar/Symbol;->peer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .line 90
    invoke-virtual {p0}, Lnet/sourceforge/zbar/Symbol;->destroy()V

    return-void
.end method

.method public getBounds()[I
    .locals 11

    .line 144
    iget-wide v0, p0, Lnet/sourceforge/zbar/Symbol;->peer:J

    invoke-direct {p0, v0, v1}, Lnet/sourceforge/zbar/Symbol;->getLocationSize(J)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    const v4, 0x7fffffff

    move v7, v2

    move v5, v4

    move v6, v5

    move v4, v3

    :goto_0
    if-ge v7, v0, :cond_5

    .line 155
    iget-wide v8, p0, Lnet/sourceforge/zbar/Symbol;->peer:J

    invoke-direct {p0, v8, v9, v7}, Lnet/sourceforge/zbar/Symbol;->getLocationX(JI)I

    move-result v8

    .line 156
    iget-wide v9, p0, Lnet/sourceforge/zbar/Symbol;->peer:J

    invoke-direct {p0, v9, v10, v7}, Lnet/sourceforge/zbar/Symbol;->getLocationY(JI)I

    move-result v9

    if-le v5, v8, :cond_1

    move v5, v8

    :cond_1
    if-ge v3, v8, :cond_2

    move v3, v8

    :cond_2
    if-le v6, v9, :cond_3

    move v6, v9

    :cond_3
    if-ge v4, v9, :cond_4

    move v4, v9

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    aput v5, v1, v2

    const/4 p0, 0x1

    aput v6, v1, p0

    const/4 p0, 0x2

    aput v3, v1, p0

    const/4 p0, 0x3

    aput v4, v1, p0

    return-object v1
.end method

.method public getBounds2()[[F
    .locals 13

    .line 179
    iget-wide v0, p0, Lnet/sourceforge/zbar/Symbol;->peer:J

    invoke-direct {p0, v0, v1}, Lnet/sourceforge/zbar/Symbol;->getLocationSize(J)I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 180
    fill-array-data v2, :array_0

    const-class v3, F

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/high16 v3, -0x80000000

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move v6, v4

    move v7, v6

    move v8, v5

    move v4, v3

    :goto_0
    if-ge v8, v0, :cond_5

    .line 190
    iget-wide v9, p0, Lnet/sourceforge/zbar/Symbol;->peer:J

    invoke-direct {p0, v9, v10, v8}, Lnet/sourceforge/zbar/Symbol;->getLocationX(JI)I

    move-result v9

    .line 191
    iget-wide v10, p0, Lnet/sourceforge/zbar/Symbol;->peer:J

    invoke-direct {p0, v10, v11, v8}, Lnet/sourceforge/zbar/Symbol;->getLocationY(JI)I

    move-result v10

    const/4 v11, 0x1

    if-le v6, v9, :cond_1

    .line 194
    aget-object v6, v2, v5

    int-to-float v12, v9

    aput v12, v6, v5

    int-to-float v12, v10

    .line 195
    aput v12, v6, v11

    move v6, v9

    :cond_1
    if-ge v3, v9, :cond_2

    .line 199
    aget-object v3, v2, v1

    int-to-float v12, v9

    aput v12, v3, v5

    int-to-float v12, v10

    .line 200
    aput v12, v3, v11

    move v3, v9

    :cond_2
    if-le v7, v10, :cond_3

    .line 204
    aget-object v7, v2, v11

    int-to-float v12, v9

    aput v12, v7, v5

    int-to-float v12, v10

    .line 205
    aput v12, v7, v11

    move v7, v10

    :cond_3
    if-ge v4, v10, :cond_4

    const/4 v4, 0x3

    .line 209
    aget-object v4, v2, v4

    int-to-float v9, v9

    aput v9, v4, v5

    int-to-float v9, v10

    .line 210
    aput v9, v4, v11

    move v4, v10

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    return-object v2

    :array_0
    .array-data 4
        0x4
        0x2
    .end array-data
.end method

.method public getComponents()Lnet/sourceforge/zbar/SymbolSet;
    .locals 3

    .line 236
    new-instance v0, Lnet/sourceforge/zbar/SymbolSet;

    iget-wide v1, p0, Lnet/sourceforge/zbar/Symbol;->peer:J

    invoke-direct {p0, v1, v2}, Lnet/sourceforge/zbar/Symbol;->getComponents(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/zbar/SymbolSet;-><init>(J)V

    return-object v0
.end method

.method public native getConfigMask()I
.end method

.method public native getCount()I
.end method

.method public native getData()Ljava/lang/String;
.end method

.method public native getDataBytes()[B
.end method

.method public getLocationPoint(I)[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 223
    iget-wide v1, p0, Lnet/sourceforge/zbar/Symbol;->peer:J

    invoke-direct {p0, v1, v2, p1}, Lnet/sourceforge/zbar/Symbol;->getLocationX(JI)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 224
    iget-wide v1, p0, Lnet/sourceforge/zbar/Symbol;->peer:J

    invoke-direct {p0, v1, v2, p1}, Lnet/sourceforge/zbar/Symbol;->getLocationY(JI)I

    move-result p0

    const/4 p1, 0x1

    aput p0, v0, p1

    return-object v0
.end method

.method public native getModifierMask()I
.end method

.method public native getOrientation()I
.end method

.method public native getQuality()I
.end method

.method public getType()I
    .locals 2

    .line 108
    iget v0, p0, Lnet/sourceforge/zbar/Symbol;->type:I

    if-nez v0, :cond_0

    .line 109
    iget-wide v0, p0, Lnet/sourceforge/zbar/Symbol;->peer:J

    invoke-direct {p0, v0, v1}, Lnet/sourceforge/zbar/Symbol;->getType(J)I

    move-result v0

    iput v0, p0, Lnet/sourceforge/zbar/Symbol;->type:I

    .line 110
    :cond_0
    iget p0, p0, Lnet/sourceforge/zbar/Symbol;->type:I

    return p0
.end method

.method native next()J
.end method
