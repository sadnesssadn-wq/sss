.class public final enum Lc/c/b/a/c/j$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/b/a/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/c/b/a/c/j$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lc/c/b/a/c/j$b;

.field public static final enum d:Lc/c/b/a/c/j$b;

.field public static final synthetic e:[Lc/c/b/a/c/j$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lc/c/b/a/c/j$b;

    const-string v1, "OUTSIDE_CHART"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/c/b/a/c/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/c/b/a/c/j$b;->c:Lc/c/b/a/c/j$b;

    new-instance v1, Lc/c/b/a/c/j$b;

    const-string v3, "INSIDE_CHART"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc/c/b/a/c/j$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/c/b/a/c/j$b;->d:Lc/c/b/a/c/j$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lc/c/b/a/c/j$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lc/c/b/a/c/j$b;->e:[Lc/c/b/a/c/j$b;

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

.method public static valueOf(Ljava/lang/String;)Lc/c/b/a/c/j$b;
    .locals 1

    const-class v0, Lc/c/b/a/c/j$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/c/b/a/c/j$b;

    return-object p0
.end method

.method public static values()[Lc/c/b/a/c/j$b;
    .locals 1

    sget-object v0, Lc/c/b/a/c/j$b;->e:[Lc/c/b/a/c/j$b;

    invoke-virtual {v0}, [Lc/c/b/a/c/j$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/c/b/a/c/j$b;

    return-object v0
.end method
