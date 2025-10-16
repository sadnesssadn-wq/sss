.class public Lc/b/q/d/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private address:Ljava/lang/String;

.field private latitude:D
    .annotation runtime Lc/d/c/v/c;
        value = "to_latitude"
    .end annotation
.end field

.field private longitude:D
    .annotation runtime Lc/d/c/v/c;
        value = "to_longitude"
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private phone:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "phone_no"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/q/d/b;->address:Ljava/lang/String;

    return-object v0
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lc/b/q/d/b;->latitude:D

    return-wide v0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lc/b/q/d/b;->longitude:D

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/q/d/b;->name:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/q/d/b;->phone:Ljava/lang/String;

    return-object v0
.end method
