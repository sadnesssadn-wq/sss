.class public final enum Lc/f/a/t$d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/f/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/f/a/t$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum d:Lc/f/a/t$d;

.field public static final enum e:Lc/f/a/t$d;

.field public static final enum f:Lc/f/a/t$d;

.field public static final synthetic g:[Lc/f/a/t$d;


# instance fields
.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lc/f/a/t$d;

    const-string v1, "MEMORY"

    const/4 v2, 0x0

    const v3, -0xff0100

    invoke-direct {v0, v1, v2, v3}, Lc/f/a/t$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/f/a/t$d;->d:Lc/f/a/t$d;

    new-instance v1, Lc/f/a/t$d;

    const-string v3, "DISK"

    const/4 v4, 0x1

    const v5, -0xffff01

    invoke-direct {v1, v3, v4, v5}, Lc/f/a/t$d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lc/f/a/t$d;->e:Lc/f/a/t$d;

    new-instance v3, Lc/f/a/t$d;

    const-string v5, "NETWORK"

    const/4 v6, 0x2

    const/high16 v7, -0x10000

    invoke-direct {v3, v5, v6, v7}, Lc/f/a/t$d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lc/f/a/t$d;->f:Lc/f/a/t$d;

    const/4 v5, 0x3

    new-array v5, v5, [Lc/f/a/t$d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lc/f/a/t$d;->g:[Lc/f/a/t$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lc/f/a/t$d;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/f/a/t$d;
    .locals 1

    const-class v0, Lc/f/a/t$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/f/a/t$d;

    return-object p0
.end method

.method public static values()[Lc/f/a/t$d;
    .locals 1

    sget-object v0, Lc/f/a/t$d;->g:[Lc/f/a/t$d;

    invoke-virtual {v0}, [Lc/f/a/t$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/f/a/t$d;

    return-object v0
.end method
