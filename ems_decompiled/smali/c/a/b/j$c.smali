.class public final enum Lc/a/b/j$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/a/b/j$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lc/a/b/j$c;

.field public static final enum d:Lc/a/b/j$c;

.field public static final enum e:Lc/a/b/j$c;

.field public static final enum f:Lc/a/b/j$c;

.field public static final synthetic g:[Lc/a/b/j$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lc/a/b/j$c;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/a/b/j$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/b/j$c;->c:Lc/a/b/j$c;

    new-instance v1, Lc/a/b/j$c;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc/a/b/j$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/a/b/j$c;->d:Lc/a/b/j$c;

    new-instance v3, Lc/a/b/j$c;

    const-string v5, "HIGH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lc/a/b/j$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc/a/b/j$c;->e:Lc/a/b/j$c;

    new-instance v5, Lc/a/b/j$c;

    const-string v7, "IMMEDIATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lc/a/b/j$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lc/a/b/j$c;->f:Lc/a/b/j$c;

    const/4 v7, 0x4

    new-array v7, v7, [Lc/a/b/j$c;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lc/a/b/j$c;->g:[Lc/a/b/j$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/a/b/j$c;
    .locals 1

    const-class v0, Lc/a/b/j$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/a/b/j$c;

    return-object p0
.end method

.method public static values()[Lc/a/b/j$c;
    .locals 1

    sget-object v0, Lc/a/b/j$c;->g:[Lc/a/b/j$c;

    invoke-virtual {v0}, [Lc/a/b/j$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/b/j$c;

    return-object v0
.end method
